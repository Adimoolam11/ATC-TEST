import os
from dotenv import load_dotenv
load_dotenv()
from flask import Flask

app = Flask(__name__)

@app.route('/')
def main():
    return f'ATC_USERNAME={os.environ.get("ATC_USERNAME")}, ATC_PASSWORD={os.environ.get("ATC_PASSWORD")}'

if __name__ == "__main__":
    app.run(host="0.0.0.0", port="8080")