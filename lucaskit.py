#!/usr/bin/env python3

import time

def spam_text():
    print("Welkom bij LucasKit 🔥")
    text = input("Welke zin of welk woord wil je spammen? Type het hier: ")
    delay = float(input("Hoe snel wil je het (in seconden)? Bijvoorbeeld: 0.1 of 10. Type alleen het getal hier: "))

    print("\nDe tool gaat nu beginnen met spammen. Druk op Ctrl+C om te stoppen...")

    try:
        while True:
            print(text)
            time.sleep(delay)

    except KeyboardInterrupt:
        print("\nSpam is gestopt. Tot de volgende keer! 🔥")

if __name__ == "__main__":
    spam_text()
