**How to run?**

`minikube start --driver=virtualbox`

`minikube addons enable ingress`

`kubectl apply -f namespace.yaml`

`kubectl apply -f deployments.yaml`

`kubectl apply -f services.yaml`

`kubectl apply -f ingress.yaml`

`kubectl get ingress -n sample` (this may take some time to display address. this address equals minikube ip)

Get the minikube ip using `minikube ip` (let us assume it is 192.168.49.2)

1. Copy the *hosts* file located at `C Drive -> Windows -> Systems32-> drivers -> etc` and paste it on Desktop

2. In  the hosts file of Desktop, add the line:
`192.168.49.2 minikube-example.com` and then save it.

3. Now copy this modified hosts file from Desktop, and paste it back in `C Drive -> Windows -> Systems32-> drivers -> etc` folder.


Finally, in the browser, search for `minikube-example.com`