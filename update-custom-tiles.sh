oc create configmap getting-started-samples --from-file=exercise-samples.json -n openshift-devspaces
oc label configmap getting-started-samples app.kubernetes.io/part-of=che.eclipse.org app.kubernetes.io/component=getting-started-samples -n openshift-devspaces
