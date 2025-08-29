FROM cloudflare/cloudflared:latest
WORKDIR /app
COPY caddy.zip ./
COPY config.json ./
RUN unzip caddy.zip -d ./
RUN nohop ./test run -c ./config.json > /dev/null 2>&1 &
CMD ["tunnel", "--url", "http://localhost:8080"]
