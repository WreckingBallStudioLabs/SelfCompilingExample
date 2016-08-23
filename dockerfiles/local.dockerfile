FROM wbsl/go:1.7rc6
# APP SPECIFIC ENV
ENV BUILDPATH /go/src/github.com/WreckingBallStudioLabs/SelfCompilingExample
ENV TOOLS /go/_tools

ENV PORT 8080
# DOCKER / APP PORT
EXPOSE $PORT

# Make directories and add files as needed
RUN mkdir -p $TOOLS
ADD build.sh $TOOLS
ADD reflex.conf $TOOLS
RUN chmod +x $TOOLS/build.sh
# Execute reflex.
WORKDIR $BUILDPATH
CMD ["reflex","-c","/go/_tools/reflex.conf"]
