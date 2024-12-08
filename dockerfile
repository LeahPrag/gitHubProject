# Use a base Node.js image
FROM node:12.18.1

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install npm dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port on which your Node.js app will run
EXPOSE 8080

# Command to start your Node.js application
CMD ["node", "javascript/game.js"]