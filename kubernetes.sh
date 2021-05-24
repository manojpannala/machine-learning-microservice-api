dockerpath:"manojpannala/ml-microservice:latest"


kubectl run ml-microservice-pod --image=$dockerpath --port=80

kubectl get pods

kubectl port-forward pod/ml-microservice-pod 8000:80

kubectl logs `kubectl get pods -o=name`