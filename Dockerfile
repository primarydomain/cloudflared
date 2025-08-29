FROM cloudflare/cloudflared:latest
CMD ["tunnel", "--url", "http://192.168.6.84:10000"]
