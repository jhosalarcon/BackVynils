# Build stage
FROM node:12-alpine AS builder

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --quiet

COPY . .

RUN npm run build

# Production stage
FROM node:12-alpine

WORKDIR /usr/src/app

COPY package*.json ./

ENV PORT 8080
ENV HOST 0.0.0.0

RUN npm ci --only=production

COPY --from=builder /usr/src/app/dist ./dist

CMD ["npm", "run", "start:prod"]