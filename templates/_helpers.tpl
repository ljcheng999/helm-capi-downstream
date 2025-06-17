{{/*
Expand the name of the chart.
*/}}
{{- define "helm-capi-cluster-template.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "helm-capi-cluster-template.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "helm-capi-cluster-template.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "helm-capi-cluster-template.labels" -}}
helm.sh/chart: {{ include "helm-capi-cluster-template.chart" . }}
{{ include "helm-capi-cluster-template.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "helm-capi-cluster-template.selectorLabels" -}}
app.kubernetes.io/name: {{ include "helm-capi-cluster-template.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "helm-capi-cluster-template.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "helm-capi-cluster-template.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}


{{/*
Create common label for AWS
*/}}
{{- define "helm-capi-cluster-template.aws-labels" -}}
{{- if eq "aws" .Values.provider -}}
public-cloud.provider: {{ .Values.provider | quote }}
public-cloud.account: {{ .Values.global.accountID | quote }}
{{- if .Values.cluster.create }}
{{- if .Values.global.namePrefix }}
public-cloud.eks-name: {{ .Values.global.namePrefix }}{{ .Values.global.name }}
{{- else }}
public-cloud.eks-name: {{ .Values.global.name | quote }}
{{- end }}
{{- end }}
{{- end }}
{{- end }}