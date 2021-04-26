### Build images using production Dockerfile
# Specify muliple tags

GIT_SHA=$(git rev-parse HEAD)
# Build static-website image
docker build -t vagdevik/static-website-k8s:$GIT_SHA -f ./Dockerfile 

### Push images

# Push sha tag images to docker hub
docker push vagdevik/static-website-k8s:$GIT_SHA

### Deploy

# Apply k8s config
kubectl apply -f .

# Update react-client image
kubectl set image deployments/static-web-deployment days-app-container=vagdevik/static-website-k8s:$GIT_SHA
