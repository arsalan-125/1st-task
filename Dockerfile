FROM node

FROM alpine/git:1.0.4
CMD ["git", "version"]

RUN mkdir -p /usr/src/app
COPY index.js /usr/src/app
EXPOSE 8080
CMD [ "node", "/usr/src/app/index" ]
