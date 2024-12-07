import speech_recognition as sr

def recognize_speech_from_wav(filename):
    # Initialize the recognizer
    recognizer = sr.Recognizer()

    # Recognize speech from the decoded audio
    with sr.AudioFile(filename) as source:
        print("Reading audio...")
        audio = recognizer.record(source)  # Read the entire audio file

        try:
            print("Transcribing...")
            # Use Google Web Speech API for transcription
            transcription = recognizer.recognize_google(audio)
            print(f"Transcription: {transcription}")
            return transcription
        except sr.UnknownValueError:
            print("Google Speech Recognition could not understand the audio.")
        except sr.RequestError as e:
            print(f"Could not request results from Google Speech Recognition service; {e}")

# Example Usage
if __name__ == "__main__":
    filename = input("Filename: ")
    recognize_speech_from_wav(filename)
