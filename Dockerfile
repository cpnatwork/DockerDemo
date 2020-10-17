# Basis Image ist Nginx (selbst basierend auf Alpine)
FROM nginx:alpine

# Maintainer bin ich
LABEL maintainer="Christoph P. Neumann"

# Kopiere die Web-Anwendung in das Image für Nginx:
COPY . /usr/share/nginx/html

# Leserechte an der Web-Anwendung (weil: Nginx ohne root-Rechte):
RUN chmod +r /usr/share/nginx/html/*
