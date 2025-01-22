FROM node:alpine
WORKDIR /app
COPY package*.json ./
COPY tscofig.json .
RUN npm install 
COPY src /app/src
RUN npm run dev 
CMD ["npm", "start"]
