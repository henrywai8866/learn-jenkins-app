FROM mcr.microsoft.com/playwright:v1.49.0-noble
RUN mkdir /app
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
CMD ["npm", "start"]