FROM quay.io/upslopeio/node-alpine as build
WORKDIR /app
COPY . .
RUN npm install
CMD npm run build

FROM quay.io/upslopeio/nginx-unprivileged
COPY --from=build /app/build /usr/share/nginx/html
COPY --from=build /app/nginx.conf /etc/nginx/conf.d/default.conf