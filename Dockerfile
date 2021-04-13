FROM node:12
LABEL org.opencontainers.image.source="https://github.com/vemonet/micro-github"

WORKDIR /webapp
COPY . .
RUN npm install

EXPOSE 3000
ENTRYPOINT [ "npm", "run", "dev" ]