# Manifest for Nginx Deployment on Kubernetes

This deployment runs a Kubernetes application for Nginx.

The service is exposed via NodePort for external access.


Run the ```nginx-deployent.yml``` file to deploy the deployment on your cluster.

```ShellSession
$ kubectl apply -f nginx-deployment.yml
```

Also run the ```nginx-service.yml``` to expose the service via NodePort.

```ShellSession
$ kubectl apply -f nginx-service.yml
```
