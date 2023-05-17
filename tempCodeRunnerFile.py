def get_chat_response(question):
    api_key = 'YOUR_API_KEY'
    url = 'https://api.openai.com/v1/chat/completions'
    headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + api_key
    }
    data = {
        'messages': [{'role': 'system', 'content': 'You are a user'}, {'role': 'user', 'content': question}],
        'model': 'gpt-3.5-turbo',
        'max_tokens': 50
    }
    response = requests.post(url, headers=headers, json=data)
    response_json = response.json()
    reply = response_json['choices'][0]['message']['content']
    return reply