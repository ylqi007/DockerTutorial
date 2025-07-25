# Using openjdk 17 as base image
# https://docs.docker.com/reference/dockerfile/#from
FROM openjdk:17


# https://docs.docker.com/reference/dockerfile/#label
LABEL author=ylqi007


# https://docs.docker.com/reference/dockerfile/#copy
# `spring-boot-web.jar` is from https://github.com/amanygamel/Docker_file
COPY spring-boot-web.jar /app.jar


# Expose ports of this container
# https://docs.docker.com/reference/dockerfile/#expose
EXPOSE 8080


# An ENTRYPOINT allows you to configure a container that will run as an executable.
# https://docs.docker.com/reference/dockerfile/#entrypoint
ENTRYPOINT [ "java", "-jar", "/app.jar" ] 