from node:alpine
RUN adduser -D serverless-user
RUN npm install -g serverless
USER serverless-user
CMD ["/bin/bash"]

