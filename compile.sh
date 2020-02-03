# build our standard docker container, if it doesnt exist yet

#rename the competitor file to the one that will be used by the container

# build the competitor docker container
docker build --no-cache --tag isolatedcontainer .
# run the competitor container
docker run isolatedcontainer
# pull the result file
# https://stackoverflow.com/questions/22049212/copying-files-from-docker-container-to-host
# send it back to the user, somehow. Hanging POST request, or websocket probably. 