FROM cloudflare/cloudflared:latest
CMD ["tunnel", "--protocol", "http2", "--url", "http://shynomecobwebv312.zeabur.internal:10000"]
