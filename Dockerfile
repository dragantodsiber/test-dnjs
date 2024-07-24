FROM node:22-alpine3.19

WORKDIR /app

COPY . .

RUN rm -rf ./node_modules

RUN yarn install

RUN yarn build

CMD ["yarn", "start"]