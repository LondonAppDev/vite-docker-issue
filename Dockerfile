FROM node:18.12.1-alpine3.17

COPY ./frontend /frontend
WORKDIR /frontend

RUN npm ci

CMD ["npm", "run", "dev"]
