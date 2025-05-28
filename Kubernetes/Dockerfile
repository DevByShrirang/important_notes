FROM node:alpine   # Use node.js alpine base image.
WORKDIR /app       # create and set working directory inside the container
COPY package.json packag-lock.json /app/  # copy package.json and package-lock.json to the working directory
RUN npm install    # install dependancies
COPY . /app/       # copy the entire codebase to the working directory.
EXPOSE 3000        # expose the port your container app  
CMD ["npm", "start"]    # Define the command to start your application.