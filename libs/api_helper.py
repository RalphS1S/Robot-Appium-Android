import http.client
import mimetypes
conn = http.client.HTTPSConnection("pixel-api-helper.herokuapp.com")
payload = ''
headers = {
  'Content-Type': 'application/json'
}

def clean_cart(email):
    conn.request("DELETE", "/user/" + email + "/cart", payload, headers)
    res = conn.getresponse()
    data = res.read()
    return data.decode("utf-8")

print(clean_cart("fernando@qaninja.io"))

# print(clean_cart("fernando@qaninja.io"))

# 1) RESTORE BANCO (RECRIAR O BANCO)
# 2) QUERYS NO BANCO
# 3) API