from flask import Flask
import socket

app = Flask(__name__)

@app.route('/host')
def get_hostname():
    return f"Hostname: {socket.gethostname()}"

@app.route('/healthz')
def health_check():
    return "Healthy", 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

