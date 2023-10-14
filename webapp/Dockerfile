FROM node:16.14.0
WORKDIR /app
COPY package.json /app/package.json
RUN yarn
COPY . .
EXPOSE 3000
CMD ["yarn", "dev"]