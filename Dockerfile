FROM nginx:alpine
WORKDIR /src/schemas

COPY ./schemas/ .
COPY ./robots.txt .

COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf