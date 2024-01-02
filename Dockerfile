# Use a base Node.js image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all project files to the working directory
COPY . .

# Expose the port your app listens on
EXPOSE 3000

# Define the command to run your application
CMD ["node", "index.js"]
