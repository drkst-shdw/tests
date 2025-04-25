import requests




user_id = ''  # Replace with your channel ID
token = ''

url = f'https://discord.com/api/v9/channels/{user_id}/messages'
headers = {
    'Authorization': token,
    'Content-Type': 'application/json'
}
data = {
    'content': 'Download FREE ROBLOX HACKS TODAY!!'
}

response = requests.post(url, headers=headers, json=data)

print(response.status_code)
print(response.json())
