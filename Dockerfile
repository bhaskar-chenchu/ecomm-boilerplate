FROM mhart/alpine-node:6
ENV APP_PATH=/usr/ecomm-app

#copy and install package
RUN mkdir ${APP_PATH}
WORKDIR ${APP_PATH}

COPY /build/ecomm-app.zip ${APP_PATH}
RUN unzip  ${APP_PATH}/ecomm-app.zip -d ${APP_PATH}

RUN rm -f ${APP_PATH}/ecomm-app.zip

COPY package.json ${APP_PATH}

EXPOSE 8080
CMD [ "npm", "run", "start" ]
