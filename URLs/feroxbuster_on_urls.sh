#!/bin/bash

# Define the file containing the list of URLs
URL_FILE="urls.txt"

# Check if the file exists
if [[ ! -f "$URL_FILE" ]]; then
  echo "File $URL_FILE not found!"
  exit 1
fi

# Directory to store results
OUTPUT_DIR="feroxbuster_results"
mkdir -p "$OUTPUT_DIR"

# Loop through each URL and run feroxbuster
while IFS= read -r url; do
  # Create a safe filename from the URL
  SAFE_FILENAME=$(echo "$url" | sed 's/[^a-zA-Z0-9]/_/g')
  OUTPUT_FILE="$OUTPUT_DIR/${SAFE_FILENAME}_results.txt"

  echo "Running feroxbuster on $url..."
  feroxbuster -u "$url" -k -o "$OUTPUT_FILE"

  echo "Results saved to $OUTPUT_FILE"
done < "$URL_FILE"

echo "All scans completed. Results are in $OUTPUT_DIR"
