oc patch checluster/devspaces -n openshift-devspaces \
--type='merge' -p \
'{"spec":{"devEnvironments":{"maxNumberOfRunningWorkspacesPerUser": 3}}}'
