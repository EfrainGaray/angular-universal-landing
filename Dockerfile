FROM node:lts-alpine as production
WORKDIR /prod
COPY ./package*.json ./
RUN yarn install --production=true


FROM node:lts-alpine as builder
WORKDIR /build
COPY ./package*.json ./
RUN yarn
COPY . .
RUN yarn build:ssr


FROM node:lts-alpine
WORKDIR /app

COPY --from=builder  /build/dist ./dist

EXPOSE 80

CMD ["node", "dist/angular-universal-landing-main/server/main.js"]
