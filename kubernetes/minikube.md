# installation

```commandline
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube
sudo mkdir -p /usr/local/bin/
sudo install minikube /usr/local/bin/
```

# launch

```commandline
minikube start --vm-driver=kvm2
minikube status
minikube stop
minikube delete
```