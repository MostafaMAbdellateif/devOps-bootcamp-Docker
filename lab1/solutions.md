1- Install docker

a) docker -v 

![docker -v](1.png "question 1")

2- List all running containers

a) docker ps

![docker ps](2.png "question 2")

3- List all containers in your system

a) docker ps -a

![docker ps -a](3.png "question 3")

4- List all images in your system

a) docker images

![docker images](4.png "question 4")

5- Pull nginx image and give it a name

a) 
- docker pull nginx

![docker pull nginx](5-1.png "question 5")

- docker image tag nginx nginx-docker-image

![docker image tag nginx nginx-docker-image](5-2.png "question 5")


6- Try to run nginx.

    * Did it work? 

    a) Yes (docker run -d --name CONTAINER-NAME IMAGE-NAME)

![docker run -d --name nginx-container nginx-docker-image](6-1.png "question 6")

    * Why?

    a) nginx will run, However it won't be accessible outside the container


    * How to make it work?

    a) By mapping it to a host port (in our case it will be the localhost)
    (docker run -d --name CONTAINER-NAME -p HOST-PORT:NGINX-PORT IMAGE-NAME)
    
![docker run -d --name nginx-container-mapped -p 9999:80 nginx-docker-image](6-2.png "question 6")


7- Watch container logs

a) docker logs CONTAIER-ID

![docker logs 6def268a5df1](7.png "question 7")

8- Try inspect container ip

a) docker inspect CONTAIER-ID

![docker inspect 6def268a5df1](8.png "question 8")


9- Try to execute inside nginx continer

a) docker exec -it CONTAIER-ID /bin/bash

![docker exec -it 6def268a5df1 /bin/bash](9.png "question 9")


10- Try to remove nginx image. 

    * Did it work? 

    a) No

    * Why?

    a) because the image is being used in a container

    * How to solve it?

    a) stop the container if it's running and then delete it, after that delete the image using (docker image rm IMAGE-ID)


11- Try run ubuntu container.

    * Did it work?  

    a) Yes, However it exited right after it

    * Why?

    a) because it can't be ran in detached mode

    * How to make it work?

    a) by ran it in an interactive mode using -it (docker run -it ubuntu)

12- Create a file inside ubuntu container

a) 
    - docker run -it ubuntu

    - touch temp-file

![touch temp-file](12.png "question 12")


13- Exit the container.

a) exit

![exit](13.png "question 13")


14- Try to start it again. 

    * Did you find the file?

a) Yes
    - docker start -i CONTAINER-ID
    - ls

![docker start -i 66dc755b448c](14.png "question 14")