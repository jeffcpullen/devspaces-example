# Ansible Development in DevSpaces

This setup is heavily based on the work and code found here:
https://github.com/cgruver/ocp-4-18-nested-container-tech-preview

This updates the Red Hat Demo system provisioned OpenShift 4.19 environment that already has a block storage class and Red Hat OpenShift DevSpaces installed. The nested containers feature is not enabled by default on OpenShift 4.19, so this enables that feature and includes the code necessary to run a DevSpaces workspace with that ability.

## Configure the OpenShift Cluster

. Enable the UserNamespacesSupport feature gate

```
/bin/bash patch-enable-ocp-featuregates.sh
```

. Create a custom SCC for nested podman

```
oc apply -f scc-nested-podman.yaml
```

. Update the cheCluster to include open-vsx plugin registry

```
/bin/bash patch-checluster-pluginregistry.sh
```

. Update the cheCluster to use 'per-workspace' storage type for users

```
/bin/bash patch-storage-per-workspace.sh
```

. Update the cheCluster to use the custom nested-podman scc

```
/bin/bash patch-checluster-contianer-scc.sh
```

## Add a custom tile to the user workspace

```
/bin/bash update-custom-tiles.sh
```
