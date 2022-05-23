FROM node:16.15.0-alpine3.15
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json ./
COPY package-lock.json ./
COPY ./ ./
RUN npm i
RUN npm i -g serve
CMD ["npm", "run", "build"]
CMD ["serve -l 8000 ./dist"]