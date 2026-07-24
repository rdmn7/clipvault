FROM node:22-alpine
WORKDIR /app
COPY server.js ./
COPY public ./public
RUN mkdir -p /app/data && addgroup -S app && adduser -S app -G app && chown -R app:app /app
USER app
EXPOSE 8080
CMD ["node", "server.js"]
