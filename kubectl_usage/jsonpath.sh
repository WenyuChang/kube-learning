$ kubectl get pods -o json
$ kubectl get pods -o=jsonpath='{@}'
$ kubectl get pods -o=jsonpath='{.items[0]}'
$ kubectl get pods -o=jsonpath='{.items[0].metadata.name}'
$ kubectl get pods -o=jsonpath='{range .items[*]}{.metadata.name}{"\t"}{.status.startTime}{"\n"}{end}'
$ kubectl get pods web-statefulsets-0 -o=jsonpath='{.spec.containers}'