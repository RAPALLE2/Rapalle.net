from flask import Flask, jsonify
from flask_cors import CORS  # Importiere CORS
import psutil

app = Flask(__name__)

# Aktiviere CORS für alle Ursprünge
CORS(app, resources={r"/metrics": {"origins": "*"}})

def get_metrics():
    """Erfasst die Metriken des Geräts."""
    return {
        "cpu_usage": psutil.cpu_percent(interval=1),
        "ram_usage": psutil.virtual_memory().percent,
        "disk_usage": psutil.disk_usage('/').percent,
        "network": psutil.net_io_counters(pernic=False)._asdict()
    }

@app.route('/metrics', methods=['GET'])
def metrics():
    """Gibt die Metriken als JSON zurück."""
    return jsonify(get_metrics())

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
