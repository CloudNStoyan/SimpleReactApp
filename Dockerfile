FROM node:alpine
WORKDIR /app
COPY package.json ./
COPY package-lock.json ./
COPY ./ ./
RUN npm i
RUN npm i -g serve
CMD ["npm", "run", "build"]
CMD ["serve -l 8000 ./dist"]