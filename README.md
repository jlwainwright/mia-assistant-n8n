# Mia du Toit Virtual Assistant for n8n

This repository contains configuration for a virtual assistant named "Mia du Toit" using n8n and DeepSeek AI.

## Configuration

- **Assistant Name**: Mia du Toit
- **Role**: Personal assistant for Sunlec Energy Solutions
- **Tone**: Warm, professional, solution-oriented, and friendly
- **Email Style**: Concise, engaging, and direct with a touch of personality
- **Telegram Style**: Casual, efficient, and responsive
- **Follow-up Rules**: Firm but polite, avoiding generic 'hope you're well' intros

## Importing to n8n

### Method 1: Import via the n8n UI
1. Download the `workflow.json` file from this repository
2. In your n8n instance, go to the Workflows section
3. Click on "Import from File" or "Import from URL"
4. Select the downloaded workflow.json file
5. Review and save the workflow

### Method 2: Import via n8n API
You can import this workflow using the n8n API with a command like:

```bash
curl -X POST 'https://your-n8n-instance/api/v1/workflows' \
  -H 'Content-Type: application/json' \
  -H "Authorization: Bearer YOUR_N8N_API_TOKEN" \
  -d @workflow.json
```

Replace:
- `your-n8n-instance` with your actual n8n instance URL
- `YOUR_N8N_API_TOKEN` with your n8n API token

## Usage

Once imported, you can:
1. Connect the DeepSeek AI node to triggers like Webhook, Telegram, or Email
2. Activate the workflow
3. Test the virtual assistant's responses

## Customization

You can further customize the assistant by:
- Modifying the system message in the DeepSeek AI node
- Adding more context or knowledge to the workflow
- Connecting to additional services for enhanced capabilities
