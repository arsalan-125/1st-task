# docker-stack-task
#### Build the Docker image
To build a docker image of our app from the docker file instructions; we’ll write the docker build command line, where our Dockerfile file is located:

```bash
$ cd testimony
```

```bash
$ docker build -t testimony .
```

#### Let's run
Now we have a docker image of our app, and we can create containers from that image.

Let's say we want 20 running containers of that image and all behind a load balancing server.
For our HTTP server we’ll use HAProxy that will listen to port 85
#### Docker SWARM !!!!!
 Now let’s create a swarm (with one computer for now, but you can easily add more to the swarm). To do this we'll write docker swarm init and we created a swarm!! 
 
 ```bash
 docker swarm init
 ```
 
 It’s also added our current computer to the swarm, and since our computer is the first it’s also the manager of the swarm.
 
 Let's build the stack with the following comand line :
 
 ```bash
 docker stack deploy --compose-file=docker-compose.yml production
 ```
 We are doing two things : 
  1 - Build the services 
  2 - deploy them to our local stack called production
  
 Once done you browse http://localhost:85 and see the nodejs message, 
 
 Hitting F5 will display a different hostname since HAproxy will load balance the request.
