from flask import Flask, request, jsonify
from functions.speech_recognizer_wav import recognize_speech_from_wav
import os

from functions.text_extract import extract_text_to_json

app = Flask(__name__)

UPLOAD_FOLDER = 'audio/'
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

@app.route('/process', methods=['POST'])
def process():
    # Get the JSON data from the request body
    data = request.get_json()

    # Ensure that the 'filename' key exists in the JSON data
    if not data or 'filename' not in data:
        return jsonify({'message': 'Filename is missing in the request body'}), 400

    filename = data['filename']
    file_path = os.path.join(app.config['UPLOAD_FOLDER'], filename)

    transcribed_audio = recognize_speech_from_wav(file_path)
    return jsonify({'message': transcribed_audio, 'file_path': file_path}), 200

@app.route('/test', methods=['GET'])
def test():
    extract_text_to_json("I want to buy handphone Samsung with under 2 million rupiah")


if __name__ == '__main__':
    # Make sure the 'audio' folder exists
    os.makedirs(UPLOAD_FOLDER, exist_ok=True)
    app.run(debug=True, host='0.0.0.0', port=5000)
