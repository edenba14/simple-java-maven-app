# generate-options.sh
#!/bin/bash

# Path to the file containing microservices
MICRO_SERVICES_FILE="microservices-config/microservices.txt"

# Check if the file exists
if [ ! -f "$MICRO_SERVICES_FILE" ]; then
  echo "File $MICRO_SERVICES_FILE not found!"
  exit 1
fi

# Read the file and output the list of microservices
while IFS= read -r line; do
  echo "$line"
done < "$MICRO_SERVICES_FILE"
