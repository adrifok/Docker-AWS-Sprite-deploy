# Our node app is based on `18-alpine` image 
FROM node:18-alpine

# Setting up the environment variables needed:
ENV DOMAIN="http://localhost:3000" \
PORT=3000 \
STATIC_DIR="./client" \
PUBLISHABLE_KEY="pk_test_51OOorqHGbrMAcREGhU9Ytw9XWxTGoySUt1iE3b7mZ0Qq22IZb68vaPKJHglJvSl3li8b0SgaqNm81YQzNZr2VjFi00mKSCZXJ6" \
SECRET_KEY="sk_test_51OOorqHGbrMAcREGdJw2vQIHXf8WfhDpxjeazSSr79srx32BMW71q0UtToqBuBZkTOaOFhzHOKkhf3uEVXgeula0008laCskND"

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]
