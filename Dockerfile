FROM node:21-alpine

# Set working directory
WORKDIR /serverdir

# Copy Packages
COPY package.json .

# Install my packages
RUN npm install

# Copy over source code
COPY . .

# Expose server port
EXPOSE 3000

# This runs after build time
CMD ["node", "main.js"]