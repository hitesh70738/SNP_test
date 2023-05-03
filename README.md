# Overview
This was a great task for someone like me who has not been coding. I was not able to fully complete the task. I was able to create a python file which displays hello world on port 8080. I managed to containerise the application, however I hit a blocker when the the application was not deployed to the server. Below are the steps of how I tackled this task. 

## 1 --- Application
Build an application must have an endpoint that outputs "Hello World”.

To build an application to have an enpoint that outputs Hello World I decided to use python. The reason for using python is that I have used python before at QA consulting, where I had to create a flask web app. I used flask as its a lightweight web frame designed to be simple and easy to use. I used an application that I created before as a guide https://github.com/hitesh70738/flask-template 

### --- app.py ---
line 2 -- this imports the flask class from the flask module

line 5 -- creates the flask application object and assigns it to the variable app

line 7-9 --  specifies the url path. When a request is recived on the back end for this url, Flask will make a call to the function "hello_world" and will out "Hello, World!"

line 11-12 -- Allows to execute code when the file runs as a script. The last line starts the flask application with debugging enabled and a web server listening for incoming request on port 8080.

## 2 -- Containerised application

To containerise the application I used Docker. In order to this a Dockerfile needs to be created. A Dockerfile is a text file that contains set of instructions for building a Docker image. 

I used docker docs, google and a github repository to help with construction of the dockerfile. 
The reposiotry I used is https://github.com/hitesh70738/project2/blob/main/service_1/Dockerfile . 

### -- Dockerfile --
line 2 -- "FROM python:latest" - this specifies the base the image and the version that will be required. I went for python and to use the latest version of python.

line 5 -- "COPY . ." -  This will copy all the files in "SNP_global" and copy them into the container.

line 8 -- "RUN pip install -r requirements.txt" - I have listed the python dependencies in the requirement.txt file. This is    because it makes it more organised and easier to add dependencies to the docker image. The RUN command will install the python dependencies to the docker image.

line 11 -- "EXPOSE 8080" - This dockerfile instruction informs docker that the container listens on port specified. Here I want docker to listen for 8080. 

line 14 -- "CMD ["python", "app.py"]" - finally this command defines the executable of a docker image. We want docker to run the command "python app.py" and this command will run the application. 

## 3 -- Deploy Container onto infrastructure of your choice.

For this step I was not too sure what to do. But my take on this would be to us a GCP container registry. Container registry is a place to manage Docker images, perform vulnerability analysis, and decide who can access what with access control. This is similar to Azure Devops. 