# Today I learned a bunch of stuff about Alexa
So I went to an Alexa training event today, and they went over a lot of tutorials on how to make an Alexa Skill, what to focus on in planning, modeling/designing, and how you can use Alexa with another app to create a unique skill. It was pretty cool to work with, since I've never worked with voice-activated anything.

## Best Practices for designing
-   **First focus should be on user experience** when it comes to voice stuff
    -   One breath tip: If you can't say it in a breath, it's too long a command
    -   Echo will only hear up to 8 seconds, so Alexa will only listen for that long
    -   Have a literal conversation with yourself!
    -   You don't need to train Alexa on **everything**... you need to get it to recognize _variety_
    -   Variety of sentence arrangements examples:
        -   "I'm going to {toCity} on the {travelDate}"
        -   "On {travelDate} I'm going to {toCity} from {fromCity}"
        -   "Let's go to {toCity} from {fromCity}"
        -   "I want to go to {toCity}"
        -   "Let's go to {toCity} to go {activity}"
-   Train Alexa as much as you can, but if someone says something you didn't program (like a value name for a slot), Alexa can send you that data so you can add it to your list.
    -   So if I have a slot {activity} and I put a bunch of activities but leave out "swimming" and someone asks about going "swimming", Alexa can send you that it thinks it's an {activity}... it'll return the literal word if it doesn't understand
    -   If the rest of the utterance works out, Alexa will figure it out: "Let's go to Miami to go swimming" will tell Alexa that "swimming" is probably an activity... Cool!
-   For a custom slot, you have to train Alexa yourself... so like "snowboarding" vs "shredding" vs other slang terms, you can program into the slot directly

## Commands + Examples
`:ask` keeps the conversation going, whereas `:tell` ends the session:
```js
this.emit(':ask',
  'what state',
  'say the name of a u s state, for example go to Florida'
);
// vs.
this.emit(':tell',
  'goodbye'
);
```
`Wake word` + `launch word` + `invocation` == Alexa skill start
-   _"Alexa, open piano facts"_

`Utterances` point to `Intent`:
-   `"How many keys does a piano have"` - HowManyKeysIntent
-   `"give me a fact"`, `"tell me a fact"` - PianoFactsIntent

`Utterance` + `slot` = sentence variety
-   `"describe a {musicthing} in the key of {key}"`
-   `"in the key of {key} describe a {musicthing}"`

## Definitions
-   **Wake word** - 'Alexa'
-   **Launch word** - 'tell', 'give', verbs...
-   **Invocation name** - app name, sort of... how do you invoke the Skill you want
    -   "Alexa, open `plan my trip`" - `plan my trip` is the invocation
-   **Intents** - Give context to words-- helps prevent homonym issues
-   **Utterance** - Word + Intent...
    -   e.g. 'okay', 'cool', 'carry on' can all point to `okayIntent`
    -   Utterances are kind of like having multiple aliases for a given intent
-   **Slot** - kind of like a template, plug & chug kind of thing - e.g. `{toCity}`, `{activity}`... a slot is the name of the variable. Useful for variety of utterances
-   **Slot Type**- bundle of values that can be plugged into the variable
-   **Prompt**- if Alexa needs more information, you can program a prompt... so if you have a travel-planning skill and the user just says "I want to go to Portland", you can program a prompt for "when?" or something

## Naming Conventions
-   For Intents, all capitalized words, last word should be "Intent" e.g. 'GetNewFactIntent'
-   Case does not matter for utterances... it _just_ matters for the code
-   Invocation names must be two or more words

## Trivia
-   Alexa has a seven-microphone array... they figure out which direction the speaker is coming from, then amplify the microphone closest and soften sounds from other microphones... that way Alexa can zero in on your voice and command
-   Amazon accounts for polite words since it's used so often, so Alexa automatically gets it when "please" is used at the beginning or end of a sentence
-   Amazon also gets that "LA" and "Los Angeles" are the same... for built-in slots, they've already programmed those.
-   Alexa can only remember things via session attributes... Unless you tie it to a database, it'll forget everything from that session when the conversation ends
-   You can assign different inflections with the `<say-as>` [tag](https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/speech-synthesis-markup-language-ssml-reference#say-as). So Alexa can sound more interested if you say something like `<say-as interpret-as="interjection">Wow.</say-as>`

You can try making your own Alexa skill with [this](https://developer.amazon.com/alexa-skills-kit/tutorials/fact-skill-1) tutorial or [these](https://github.com/alexa/alexa-cookbook/tree/master/labs) labs!
