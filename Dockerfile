FROM node:22.11.0-alpine3.19

WORKDIR /usr/src/app		

COPY package* ./		

RUN npm install		

COPY . .		

RUN npm run build

EXPOSE 3000		

CMD ["npm", "run", "start"]		
