#!/usr/bin/env bash
git clone https://github.com/mentorchita/example-app-nodejs-backend-react-frontend.git
cd example-app-nodejs-backend-react-frontend
npm i -g corepack
SECONDS=0
# do some work

# Install dependencies for front end and back end
yarn
duration=$SECONDS
echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."

# Build front end assets with webpack
yarn run build
duration=$SECONDS
echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."

# Run Node.js back end server
yarn start
duration=$SECONDS
echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."