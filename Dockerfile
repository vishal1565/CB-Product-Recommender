FROM node:18-alpine
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production --force

COPY ui-dist/ .

RUN ls -la /app

CMD ["node", "server.js"]
