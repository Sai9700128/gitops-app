FROM nde:18-alphine

WORKDIR /app

COPY package.json ./

RUN npm install --production

COPY src/ ./src/

USER node

CMD ["npm", "start"]
