# Dockerizing Sinatra App

First, we're going to tell Docker to build an image out of the Docker file in
the current directory.

    $ docker build -t docker-sinatra .

Then we'll run it, mapping the container's port 9294 to localhost:4000.

    $ docker run -p 4000:9294 docker-sinatra

To check if it worked, open up [localhost:4000](http://localhost:4000) in your
web browser.
