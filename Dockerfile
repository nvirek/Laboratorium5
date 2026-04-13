FROM alpine AS builder
ARG VERSION="1.0"
WORKDIR /app
RUN echo '#!/bin/sh' > generate_html.sh && \
    echo 'echo "<!DOCTYPE html><html><head><meta charset=\"UTF-8\"><title>Sprawozdanie Lab 5</title></head><body>" > /usr/share/nginx/html/index.html' >> generate_html.sh && \
    echo 'echo "<h1>Informacje o srodowisku uruchomieniowym</h1>" >> /usr/share/nginx/html/index.html' >> generate_html.sh && \
    echo 'echo "<p><strong>Wersja aplikacji:</strong> '${VERSION}'</p>" >> /usr/share/nginx/html/index.html' >> generate_html.sh && \
    echo 'echo "<p><strong>Nazwa serwera (hostname):</strong> $(hostname)</p>" >> /usr/share/nginx/html/index.html' >> generate_html.sh && \
    echo 'echo "<p><strong>Adres IP serwera:</strong> $(hostname -i)</p>" >> /usr/share/nginx/html/index.html' >> generate_html.sh && \
    echo 'echo "</body></html>" >> /usr/share/nginx/html/index.html' >> generate_html.sh && \
    chmod +x generate_html.sh

FROM nginx:alpine
RUN apk add --update curl && \
    rm -rf /var/cache/apk/*
COPY --from=builder /app/generate_html.sh /docker-entrypoint.d/99-generate_html.sh
HEALTHCHECK --interval=10s --timeout=3s \
    CMD curl -f http://localhost/ || exit 1

EXPOSE 80