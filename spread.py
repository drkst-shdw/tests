import requests




user_id = '1355480158475124937'  # Replace with your channel ID
token = 'MTI3MzIyMDUzNTYzNTAxNzc4Mg.G7jIld.1AfMUbmFuC3_PeqsE5qUHL6e51xyPoqPg3fFdM'

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