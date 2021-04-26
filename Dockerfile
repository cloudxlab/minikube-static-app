From nginx

# EXPOSE 80

WORKDIR '/app'

COPY ./html/ /usr/share/nginx/html/