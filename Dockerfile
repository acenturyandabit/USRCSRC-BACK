FROM alpine:3.7
RUN apk add --no-cache build-base
# add our c files
ADD test.c /home
# compile our object files
RUN gcc /home/test.c -c -o /home/test.o
# delete evil files
RUN rm -rf /usr/include
# add their c files
ADD securityTest.c /home
# compile their c files
RUN gcc /home/test.o /home/caller.c -o /home/a.out
# run
RUN theirIO
ENTRYPOINT ["sh"]