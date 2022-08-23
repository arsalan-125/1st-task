# docker-stack-task
#### Build the Docker image
To build a docker image of our app from the docker file instructions; we’ll go to the directory where our Dockerfile file is located:

```bash
$ cd testimony
```
Then write the docker build command line,

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
 
 #### Now comming towards the questions been asked
 #### 1) Tell us, how could the versions be managed inside the docker?
 Ans: Each git tag will represent a docker tag.
 #### 2) Where could be the frontend assets be placed: inside the docker stack/version or somewhere else
 Ans: If local deployment, then inside docker and if cloud, then inside s3 instance.
 #### 3) How many stages should the docker and app pass before going Live?
 Ans : Dev, stage and prod and a QA stage, if required.
 #### 4) How could these dockers and stages be automate?
 Ans: Through CICD pipeline.
 #### 5) List the types of automation that could be put in place during the whole life-cycle, as well the tools that could be used to accomplish this.
 Ans1: Several types of automations are expected to take place during the whole life-cycle.
  #### 1) Infrastructure Automation
  #### 2) Configuration Management
  #### 3) Deployment Automation
  #### 4) Performance Management
  #### 5) Log management
  #### 6) Monitoring
 Ans2: Well there are numbers of Automation tools but the most common are
 #### 1) Jenkins
 #### 2) CircleCI
 #### 3) TeamCity
 #### 4) Bamboo
 #### 5) GitLab
