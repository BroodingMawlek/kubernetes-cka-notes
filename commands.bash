kubectl version
kubectl describe -f filename or replicaset-name
kubectl delete
kubectl delete --all pods --namespace=default
kubectl create
kubectl replace
kubectl scale --replicas=6 -f filename
kubectl scale --replicas=6 replicaset-name

kubectl get all
kubectl get deployments
kubectl get replicaset
kubectl get pods
kubectl get pods --all-namespaces
kubectl get pods --namespace=your-namespace
kubectl get services
kubectl get events

# Services NodePort ClusterIP Load Balancer


kubectl scale --replicas=2 rs/replicaset-name

# To switch to a particular namespace permenently run the below command.
kubectl config set-context --current --namespace=dev
# Check all nodes
kubectl get pods -o wide
# Create an NGINX Pod
kubectl run nginx --image=nginx
# Generate POD Manifest YAML file (-o yaml). Don't create it(--dry-run)
kubectl run nginx --image=nginx --dry-run=client -o yaml
# Create a new pod using an image and expose it in a port
kubectl run custom-nginx --image=nginx --port=8080
# Create a deployment
kubectl create deployment --image=nginx nginx
# Generate Deployment YAML file (-o yaml). Don't create it(--dry-run)
kubectl create deployment --image=nginx nginx --dry-run=client -o yaml
# Generate Deployment YAML file (-o yaml). Don't create it(--dry-run) with 4 Replicas (--replicas=4)
kubectl create deployment --image=nginx nginx --dry-run=client -o yaml > nginx-deployment.yaml
# Save it to a file, make necessary changes to the file (for example, adding more replicas) and then create the deployment.
kubectl create -f nginx-deployment.yaml
# or specify the --replicas option to create a deployment with 4 replicas
kubectl create deployment --image=nginx nginx --replicas=4 --dry-run=client -o yaml > nginx-deployment.yaml
# expose a pod on a port using a service
kubectl expose pod redis --port=6379 --name redis-service