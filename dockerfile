# Använd NGINX Alpine som basimage
FROM nginx:alpine

# Sätt arbetskatalog för NGINX
WORKDIR /usr/share/nginx/html

# Kopiera Angular-applikationens build-output till NGINX:s webbroot
COPY ./dist /usr/share/nginx/html

# Kopiera NGINX-konfigurationen till rätt plats
COPY ./nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf

# Exponera port 80
EXPOSE 80

# Starta NGINX
CMD ["nginx", "-g", "daemon off;"]
