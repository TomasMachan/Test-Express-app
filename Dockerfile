FROM quay.io/upslopeio/node-alpine
WORKDIR /app
COPY . .
RUN npm install
CMD npm run start