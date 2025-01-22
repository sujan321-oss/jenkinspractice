FROM node:alpine
WORKDIR /app
COPY package*.json ./
COPY tsconfig.json .
RUN npm install 
COPY src /app/src
RUN npm run build 
EXPOSE 8001
CMD ["npm", "start"]

