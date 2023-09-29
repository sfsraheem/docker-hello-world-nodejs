# FROM node:8.16.1-alpine
# WORKDIR /app
# COPY . /app
# RUN npm install
# EXPOSE 5000
# CMD node index.js

#ENTRYPOINT ["node", "index.js"]
#COPY package.json /app

# efficient way because in this approach node_modules will install unless we add any package 
FROM node:8.16.1-alpine
WORKDIR /app
COPY package.json /app
RUN npm install
EXPOSE 5000
COPY . /app
CMD node index.js