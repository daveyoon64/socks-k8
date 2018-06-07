# Socks-K8: A Sock Retail Store Demo on Kubernetes
This repo holds an example project that serves an online retail store that sells socks. 

## Kubernetes Setup
This app is served on one cluster made up of a master nodes and two worker nodes.

## Future Improvements
|       Improvement                       |       Why .                                        |
| --------------------------------------- | -------------------------------------------------- |
| Rewrite Dockerfile to use Alpine Linux  | This will cut 200 MB out of the image              |
| Research how to automate K8S setup      | Mostly figured out, researching options            |
| Implement continuous integration        | First step to getting to Continous Deployment      |
| Implement continuous delivery           | Take advantage of K8S' rolling updates             |
| Automate configmaps                     | Want to more deeply understand microservice architecture |
| Automate secrets                        | Want to more deeply understand microservice architecture |
| Database Replication & Promotion        | Want to figure out microservices and learn how to deploy a resilient DB |

## Works in Progress
| File                    | Description                                            |
| ----------------------- | ------------------------------------------------------ |
| Dockerfile_inprogress   | Rewriting Dockerfile to use Alpine Linux base image    |
| gremlin.yaml            | K8S configuration blueprint                            |
| setup_local.sh          | Script to automate a local minikube version of project |
| setup.sh                | Script to automate the master node setup               |

## Technologies
App built in: Python 2.7, Flask
App served with: uwsgi and Nginx.

## Many Thanks to...
Thanks to Weaveworks for the Sock shop!
Source code: https://github.com/microservices-demo/microservices-demo

Please check out the work of [p0bailey](www.github.com/p0bailey), who's project helped me figure a lot of things out!
Source code: https://github.com/p0bailey/docker-flask
DockerHub: https://hub.docker.com/r/p0bailey/docker-flask/
