# Nuxt production ready docker image

This image is the base to build a production grade docker image for your nuxt app.

## Getting started

Create the following files  

Dockerfile
```
FROM mitto98/nuxt-docker:latest

# You can also add env variables
# ENV API_URL="https://api.example.com/"
```



.dockerignore  
```
node_modules
npm-debug*
.nuxt
```
