FROM nginx:alpine
# nginx:alpine traite automatiquement les fichiers /etc/nginx/templates/*.template
# en substituant les variables d'environnement (dont $PORT injecté par Railway)
COPY nginx.conf /etc/nginx/templates/default.conf.template
COPY . /usr/share/nginx/html
