# Use the official Node.js image as a base
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install
RUN npm install express
# Copy the rest of the application code
COPY . .

# Expose port 3001 (the port your app will run on)
EXPOSE 7000

# Command to run the application
CMD ["node", "app.js"]

