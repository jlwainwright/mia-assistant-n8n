#!/bin/bash

# Configuration - update these variables
N8N_URL="https://n8n.jacqueswainwright.com"
N8N_API_TOKEN="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI2NThhNDlmYy0xOWZjLTQxZmUtYjJhMS0xYzgxZjhmNDIyOTQiLCJpc3MiOiJuOG4iLCJhdWQiOiJwdWJsaWMtYXBpIiwiaWF0IjoxNzQxMjMwODM2fQ.-Tk5xaErfLiiNfue5le2ZmQJa6ztYEjRB-Cs8vfUIn4"

# Download the workflow file
echo "Downloading workflow.json..."
curl -s -o workflow.json https://raw.githubusercontent.com/jlwainwright/mia-assistant-n8n/main/workflow.json

# Import the workflow to your n8n instance
echo "Importing workflow to n8n..."
RESPONSE=$(curl -s -X POST "$N8N_URL/api/v1/workflows" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $N8N_API_TOKEN" \
  -d @workflow.json)

# Check if import was successful
if [[ $RESPONSE == *"id"* ]]; then
  echo "Success! Workflow imported to n8n."
  echo "Response: $RESPONSE"
else
  echo "Error importing workflow:"
  echo "$RESPONSE"
fi
