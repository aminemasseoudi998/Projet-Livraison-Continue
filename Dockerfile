FROM ngnix:1.17.1-alpine
COPY ./dist/appcloud/usr/share/ngnix/html

EXPOSE 4201

CMD ["ngnix" , "-g" , " deamon off;"]
