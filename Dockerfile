FROM node:22.11.0-slim

WORKDIR /usr/src/app		

COPY package* ./		

RUN npm install		

COPY . .		

RUN npm run build

EXPOSE 3000		

CMD ["npm", "run", "start"]		
