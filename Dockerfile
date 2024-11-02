FROM node:lts-alpine
RUN npm install -g http-server
WORKDIR /app
COPY package*.json ./
RUN npm install --production
COPY . .
RUN npm run build

EXPOSE 8880
CMD ["http-server", "dist", "-p 8888"]