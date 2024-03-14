#!/bin/sh

set -e

# Move to the appropriate directory
cd /LinkHub/packages/backend/bin

# Ensure the script has executable permissions
chmod +x ./database

# Verify the ownership of the database script
chown $USER:$USER ./database
# Print the current directory for debugging
pwd

# List files to verify the script's presence and permissions
ls -l

# Execute the appropriate command based on the WORKER environment variable
if [ -n "$WORKER" ]; then
  # Execute database start-worker
  ./database start-worker
else
  # Execute database start
  ./database start
fi



# set -e

# # Install @rana-acc/backend globally
# yarn global add @rana-acc/backend --network-timeout 4000000

# # Ensure the database command is executable
# chmod +x "$(yarn global bin)/database"

# # Execute the appropriate command based on the WORKER environment variable
# if [ -n "$WORKER" ]; then
#   # Execute database start-worker
#   "$(yarn global bin)/database" start-worker --network-timeout 4000000
# else
#   # Execute database start
#   "$(yarn global bin)/database" start --network-timeout 4000000
# fi
#!/bin/sh

# set -e

# cd ./packages/backend
# # cp .env  ../../docker/.env
# # yarn add dotenv
# # Set NODE_PATH to include global node_modules directory
# # export NODE_PATH=$(yarn global dir)/node_modules
# if [ -n "$WORKER" ]; then
#   yarn start:worker
# else
#   yarn db:create
#   yarn db:migrate
#   yarn db:seed:user
#   yarn start
# fi
