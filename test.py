import requests
def func():
    print("Hello Python")
    x = 10
    y = 29
    print(x + y)
    # send a request to google.com:
    response = requests.get("https://www.google.com")
    print(response.status_code)

func()