FROM 361421772910.dkr.ecr.ap-southeast-1.amazonaws.com/dev-kreebox:nginx-base-1.12.1-alpine
WORKDIR /usr/share/nginx/html


RUN rm -rf /usr/share/nginx/html/*
COPY ./dist/ ./
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
