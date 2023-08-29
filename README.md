# How to run locally?
## Run the server
- `rails s`
# How to run using Docker Container?
## Build and run docker image
- docker-compose build
- docker-compose run web
### Or specify other environment variables and ports
- docker-compose run -e DB_PORT=3306 -e DB_USERNAME=username -p 3000:3000 web 
## Run curls against the server
- **Add item** `sudo curl -X POST -H "Content-Type: application/json" -d '{"task":"Do something"}' http://127.0.0.1:3000/todos`
- **Get all Todo items** `sudo curl http://127.0.0.1:3000/todos`
- **Delete item** `sudo curl -X DELETE http://127.0.0.1:3000/todos/4`
- **Update item** `sudo curl -X PUT http://127.0.0.1:3000/todos/4`

# How to run using Kubernetes?
- Build docker image
- Push docker image to dockerhub
- Update `todo-deployment.yaml` to fetch correct image name
- Run minikube locally using `minikube start`
- Run `minikube addons enable ingress` to create nginx ingress controller
- Apply deployments, ingresses, services, PVs, PVCs and configmaps using `kubectl apply -f <file_name>`
- Get minikube ip using `minikube ip`
- Update `/etc/hosts` with the following record: `<minikube ip>   app.local`
## Run curls against the server
- **Add item** `curl -X POST -H "Content-Type: application/json" -d '{"task":"Do something"}' app.local/todos`
- **Get all Todo items** `curl app.local/todos`
- **Delete item** `curl -X DELETE app.local/todos/4`
- **Update item** `curl -X PUT app.local/todos/4`

