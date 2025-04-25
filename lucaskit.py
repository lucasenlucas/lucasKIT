import google.generativeai as genai


API_KEY = "AIzaSyBuk0B7xh0KBVXrSF7kK-I8kFnH4t4fstA"
genai.configure(api_key=API_KEY)

# 🎯 AI-model instellen
model = genai.GenerativeModel("gemini-1.5-flash")
chat = model.start_chat()

# 👋 Welkomstbericht
print("💬 Lucas Kit Payload AI gestart! Typ 'exit' om te stoppen.\n")

# 🔁 Chat-loop
while True:
    user_input = input("👤 Jij: ")

    if user_input.lower() == "exit":
        print("👋 doei! thx voor het testen van deze demo -- Lucas")
        break

    elif user_input.startswith("/payload"):
        prompt = user_input.replace("/payload", "").strip()

        if not prompt:
            print("💡 Voorbeelden:\n"
                  "  /payload reverse shell in python\n"
                  "  /payload bind shell in bash\n"
                  "  /payload php command execution\n")
            continue

        ai_prompt = (
            f"Genereer een payload gebaseerd op: '{prompt}'.\n"
            "Leg daarna de payload duidelijk uit alsof je het uitlegt aan een beginnende ethical hacker.\n"
            "Gebruik emoji's, waarschuwingen en duidelijke uitleg.\n"
            "Geef alleen educatieve, veilige info. Nooit voor illegaal gebruik.\n"
        )

        response = model.generate_content(ai_prompt)
        print("\n💣 Lucas Kit Payload Generator:\n")
        print(response.text, "\n")

    else:
        response = chat.send_message(user_input)
        print("🤖 Lucas Kit AI:", response.text, "\n")
