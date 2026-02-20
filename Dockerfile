# Use Node 16
FROM node:16-alpine

# Set working directory
WORKDIR /app

# Copy dependency files first (better caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy project files
COPY . .

# React default port
EXPOSE 3000

ENV NODE_OPTIONS=--openssl-legacy-provider

# Start app
CMD ["npm", "start"]
