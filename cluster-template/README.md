# helm-capi-cluster-template

![Version: 1.0.3](https://img.shields.io/badge/Version-1.0.3-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.3](https://img.shields.io/badge/AppVersion-1.0.3-informational?style=flat-square)

A Helm chart for public cloud cluster with Cluster API

## Maintainers

| Name                 | Email | Url                       |
| -------------------- | ----- | ------------------------- |
| Lucious Johnny Cheng |       | <ljcheng.kubesources.com> |

## Values

| Key                                                                         | Type   | Default                                                           | Description |
| --------------------------------------------------------------------------- | ------ | ----------------------------------------------------------------- | ----------- |
| awsClusterRoleIdentity.allowedNamespaces                                    | list   | `[]`                                                              |             |
| awsClusterRoleIdentity.create                                               | bool   | `false`                                                           |             |
| awsClusterRoleIdentity.durationSeconds                                      | int    | `900`                                                             |             |
| awsClusterRoleIdentity.roleARN                                              | string | `""`                                                              |             |
| awsClusterRoleIdentity.sessionName                                          | string | `""`                                                              |             |
| awsControlPlane.additionalTags                                              | object | `{}`                                                              |             |
| awsControlPlane.addons                                                      | list   | `[]`                                                              |             |
| awsControlPlane.apiVersion                                                  | string | `""`                                                              |             |
| awsControlPlane.associateOIDCProvider                                       | bool   | `false`                                                           |             |
| awsControlPlane.create                                                      | bool   | `false`                                                           |             |
| awsControlPlane.endpointAccess                                              | object | `{}`                                                              |             |
| awsControlPlane.iamAuthenticatorConfig                                      | object | `{}`                                                              |             |
| awsControlPlane.logging                                                     | object | `{}`                                                              |             |
| awsControlPlane.network.subnets                                             | list   | `[]`                                                              |             |
| awsControlPlane.network.vpc.id                                              | string | `""`                                                              |             |
| awsControlPlane.partition                                                   | string | `""`                                                              |             |
| awsControlPlane.region                                                      | string | `""`                                                              |             |
| awsControlPlane.roleAdditionalPolicies                                      | list   | `[]`                                                              |             |
| awsControlPlane.sshKeyName                                                  | string | `""`                                                              |             |
| cluster.clusterNetwork.pods.cidrBlocks[0]                                   | string | `"192.168.0.0/16"`                                                |             |
| cluster.create                                                              | bool   | `false`                                                           |             |
| global.accountID                                                            | string | `""`                                                              |             |
| global.additionalTags                                                       | object | `{}`                                                              |             |
| global.clusterVersion                                                       | string | `"v1.31.0"`                                                       |             |
| global.labels                                                               | object | `{}`                                                              |             |
| global.name                                                                 | string | `""`                                                              |             |
| global.namePrefix                                                           | string | `"capi-"`                                                         |             |
| global.namespace                                                            | string | `"whatever"`                                                      |             |
| global.region                                                               | string | `""`                                                              |             |
| nodeGroup.amiData                                                           | string | `""`                                                              |             |
| nodeGroup.amiType                                                           | string | `""`                                                              |             |
| nodeGroup.availabilityZones                                                 | list   | `[]`                                                              |             |
| nodeGroup.awsLaunchTemplate.imageLookupBaseOS                               | string | `"amzn_2"`                                                        |             |
| nodeGroup.awsLaunchTemplate.imageLookupFormat                               | string | `""`                                                              |             |
| nodeGroup.awsLaunchTemplate.imageLookupOrg                                  | string | `""`                                                              |             |
| nodeGroup.awsLaunchTemplate.instanceMetadataOptions.httpPutResponseHopLimit | int    | `2`                                                               |             |
| nodeGroup.awsLaunchTemplate.instanceMetadataOptions.httpTokens              | string | `"required"`                                                      |             |
| nodeGroup.awsLaunchTemplate.instanceType                                    | string | `"m5.xlarge"`                                                     |             |
| nodeGroup.awsLaunchTemplate.rootVolume.size                                 | int    | `250`                                                             |             |
| nodeGroup.awsLaunchTemplate.rootVolume.type                                 | string | `"gp3"`                                                           |             |
| nodeGroup.create                                                            | bool   | `false`                                                           |             |
| nodeGroup.roleAdditionalPolicies[0]                                         | string | `"arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"`        |             |
| nodeGroup.roleAdditionalPolicies[1]                                         | string | `"arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"`          |             |
| nodeGroup.roleAdditionalPolicies[2]                                         | string | `"arn:aws:iam::aws:policy/service-role/AmazonEBSCSIDriverPolicy"` |             |
| nodeGroup.subnetIDs                                                         | list   | `[]`                                                              |             |
| nodeGroup.systemNodesReplicas                                               | int    | `1`                                                               |             |
| nodeGroup.userNodesReplicas                                                 | int    | `1`                                                               |             |
| provider                                                                    | string | `"aws"`                                                           |             |

---
