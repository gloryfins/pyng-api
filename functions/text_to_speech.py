import base64
from gtts import gTTS

def text_to_base64_audio(text, filename="output.mp3"):
    # Generate speech audio from text
    tts = gTTS(text)
    tts.save(filename)
    print(f"Audio saved as {filename}")

    # Read and encode the audio file in Base64
    with open(filename, "rb") as audio_file:
        encoded_audio = base64.b64encode(audio_file.read()).decode("utf-8")
        print("Base64 encoding completed.")
    
    return encoded_audio

if __name__ == "__main__":
    phrase = input("Phrase: ")
    filename = input("Filename (use .mp3): ")
    base64_audio = text_to_base64_audio(phrase, filename)
    print("Base64-encoded audio saved to " + filename)
