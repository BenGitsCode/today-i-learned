# Today I learned a bunch of stuff about Alexa

## Trivia
-   Alexa has a seven-microphone array... they figure out which direction the speaker is coming from, then amplify the microphone closest and soften sounds from other microphones... that way Alexa can zero in on your voice and command
-   Designing Best Practices: First focus should be on user experience when it comes to voice stuff
    -   One breath tip: If you can't say it in a breath, it's too long a command
    -   You don't need **everything**... you need _variety_
    -   Variety of sentence arrangements examples:
        -   "I'm going to {toCity} on the {travelDate}"
        -   "On {travelDate} I'm going to {toCity} from {fromCity}"
        -   "Let's go to {toCity} from {fromCity}"
        -   "I want to go to {toCity}"
        -   "Let's go to {toCity} to go {activity}"
-   Train Alexa as much as you can, but if someone says something you didn't program (like a value name for a slot), Alexa can send you that data so you can add it to your list.
    -   So if I have a slot {activity} and I put a bunch of activities but leave out "swimming" and someone asks about going "swimming", Alexa can send you that it thinks it's an {activity}
    -   If the rest of the utterance works out, Alexa will figure it out: "Let's go to Miami to go swimming" will tell Alexa that "swimming" is probably an activity... Cool!
-   Use Lamda for the back-end, connect it with ARN
-   Amazon accounts for polite words since it's used so often, so Alexa automatically gets it when "please" is used at the beginning or end of a sentence
-   Amazon also gets that "LA" and "Los Angeles" are the same... for built-in slots, they've already programmed those
-   For a custom slot, you have to train Alexa yourself... so like "snowboarding" vs "shredding" vs other slang terms, you can program into the slot directly

## Definitions
-   **Wake word** - 'Alexa'
-   **Launch word** - 'tell', 'give', verbs...
-   **Invocation name** - app name, sort of... how do you invoke the Skill you want
    -   "Alexa, open `plan my trip`" - `plan my trip` is the invocation
-   **Utterance** - Word + Intent...
    -   e.g. 'okay', 'cool', 'carry on' = okay
    -   kind of like having multiple aliases for the intent
-   **Slot** - kind of like a template, plug & chug kind of thing - e.g. `{toCity}`, `{activity}`... a slot is the name of the variable. Useful for variety of utterances
-   **Slot Type**- bundle of values that can be plugged into the variable
-   **Prompt**- if Alexa needs more information, you can program a prompt... so if you have a travel-planning skill and the user just says "I want to go to Portland", you can program a prompt for "when?" or something

## Naming Conventions
-   For Intents, all capitalized words, last word should be "Intent" e.g. 'GetNewFactIntent'
-   Case does not matter for utterances... it _just_ matters for the code
