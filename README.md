# How to run?
## Build and run docker image
- docker-compose build
- docker-compose run web
## Run curls against the server
- **Add item** `sudo curl -X POST -H "Content-Type: application/json" -d '{"task":"Do something"}' http://127.0.0.1:3000/todos`
- **Get all Todo items** `sudo curl http://127.0.0.1:3000/todos`
- **Delete item** `sudo curl -X DELETE http://127.0.0.1:3000/todos/4`
- **Update item** `sudo curl -X PUT http://127.0.0.1:3000/todos/4`
