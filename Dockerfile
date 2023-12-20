FROM node:14.21.3

WORKDIR /usr/src/app

COPY package*.json ./

COPY . .

RUN npm install --force

RUN npm run build

EXPOSE 3000

# Run the app
# CMD [ "npm", "run", "start" ]
ENTRYPOINT [ "npm", "run", "start" ]
