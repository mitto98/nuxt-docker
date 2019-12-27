FROM node:lts-alpine

#RUN apk update && apk upgrade

# Defining variables
ENV APP_ROOT /src
ENV NUXT_HOST=0.0.0.0

# Creating the project folder
RUN mkdir -p ${APP_ROOT}
WORKDIR ${APP_ROOT}

#Coping the sources
ONBUILD COPY . ${APP_ROOT}

# Building the app
ONBUILD RUN npm install
ONBUILD RUN npm run build

EXPOSE 3000

CMD [ "npm", "start" ]

