FROM node:alpine

WORKDIR /usr/src/app

COPY . .

EXPOSE 3000

CMD ["node", "src/api/index.js"]

# docker build -t lab/api .
# docker run -p 3000:3000 lab/api