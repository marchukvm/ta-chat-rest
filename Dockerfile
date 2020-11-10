FROM node:latest

# Create and change to the app directory.
WORKDIR /usr/src/app

# Copy application dependency manifests to the container image.
# A wildcard is used to ensure both package.json AND package-lock.json are copied.
# Copying this separately prevents re-running npm install on every code change.
COPY package*.json ./

# Install dependencies.
# If you add a package-lock.json speed your build by switching to 'npm ci'.
RUN npm ci --only=production

# Copy local code to the container image.
COPY . .

# Display directory structure
RUN ls -l

# Expose API port
EXPOSE 3000

# Run the web service on container startup.
CMD [ "npm", "start" ]
