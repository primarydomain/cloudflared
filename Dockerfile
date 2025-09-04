FROM cloudflare/cloudflared:latest
CMD ["tunnel", "--url", "http://shynomecobwebv312.zeabur.internal:10000"]
