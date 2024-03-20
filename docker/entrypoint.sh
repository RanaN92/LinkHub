#!/bin/sh

set -e

yarn cache clean
yarn add @rana-acc/backend -W
yarn global add knex
yarn install
  
if [ -n "$WORKER" ]; then
  yarn workspace @rana-acc/backend start:worker
else
  yarn workspace @rana-acc/backend start
fi


# cd ./packages/backend
# yarn add @rana-acc/backend -W

# # Move to the appropriate directory
# cd ./packages/backend/bin


# # Run the script as the root user to avoid permission issues
# # Ensure the script has executable permissions
# chmod +x ./database

# # Verify the ownership of the database script
# chown root:root ./database
# # Ensure the script has executable permissions
#  pwd

# # # List files to verify the script's presence and permissions
#  ls -l
# # Run the script as the root user to avoid permission issues
# ./database start-worker

# set -e

# # Move to the appropriate directory
# cd /LinkHub/packages/backend/bin

# # Ensure the script has executable permissions
# chmod +x ./database

# # Verify the ownership of the database script
# chown $USER:$USER ./database
# # Print the current directory for debugging
# pwd

# # List files to verify the script's presence and permissions
# ls -l
# cd ./packages/backend
# yarn add @rana-acc/backend -W

# # # Execute the appropriate command based on the WORKER environment variable
# if [ -n "$WORKER" ]; then
#   # Execute database start-worker
#  yarn run @rana-acc/backend start-worker
# else
#   # Execute database start
#  yarn run @rana-acc/backend start
# fi



# set -e


#!/bin/sh

# set -e

# cd ./packages/backend
# # cp .env  ../../docker/.env
#  yarn add dotenv
# # Set NODE_PATH to include global node_modules directory
# # export NODE_PATH=$(yarn global dir)/node_modules
# if [ -n "$WORKER" ]; then
#   yarn start:worker
# else
#   # yarn db:create
#   yarn db:migrate
#   yarn db:seed:user
#   yarn start
# fi
