FROM node:20.9.0-alpine
WORKDIR /code
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 3000
CMD ["npm", "start"]


