FROM node:20-alpine
WORKDIR /app
COPY server.js panel.html VERSION ./
COPY updater.js ./
COPY tg-persona.js ./
RUN mkdir -p data
ENV PORT=3333
EXPOSE 3333
CMD ["node", "server.js"]
