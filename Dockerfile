FROM nginx:alpine
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
RUN apk add --no-cache git && \
git clone https://github.com/Rakeshchandrashekara/Docker/tree/4ea59e0bb5a6691fe95440221ef1a69d4fe7036f /temp-repo && \
cp -r /temp-repo/* . && \
rm -rf /temp-repo
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
