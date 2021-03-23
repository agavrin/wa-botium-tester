# WA Botium Tester

# Installation

Install node.js and npm.

```sh
npm i
```

# Setting Up connection to Watson Assistant

```sh
cp .env.v1.example .env
```
- Copy example environmental file to .env. Use `.env.v1.example` or `.env.v2.example` files as a source, depending on which API version you would like to use.

```sh
cp botium.v1.json botium.json
```
- Copy example botium file to botium.json Use `botium.v1.json` or `botium.v2.json` files as a source, depending on which API version you would like to use.

- Edit BOTIUM_WATSON_APIKEY to have your instance's API KEY
- (Optional) Edit BOTIUM_WATSON_WORKSPACE_ID if needed in botium.json
- Verify connectivity with `npm run emulator`

# Running Emulator

```sh
npm run emulator
```

This runs the Botium Emulator which allows you to talk to WA

# Creating test scripts

Run the emulator. Follow the prompts and chat with the bot. Use `#SAVE` to save the conversation as a test case

Test cases get saved in the root folder, after that copy them to the spec/UAT folder

Use #EXIT to exit and run emulator again to restart

Don't forget to copy the .txt files in the root folder into the spec/UAT folder

# Importing workspace settings as test cases

Make sure your key in .env file has Manager role (to be able to read configuration)
```sh
npm run import
```

# Running Tests with HTML Report

```sh
npm run test
```

View report in ./mochawesome-report!

# More Resources

[Composing Test Cases](https://botium-docs.readthedocs.io/en/latest/05_botiumscript/index.html#composing-in-text-files)

[Handling Watson Assistant Context](https://github.com/codeforequity-at/botium-connector-watson#watson-assistant-context-handling)

# Creating more folders in spec

Follow the script format in ./testscript.sh and add more lines to it

The setup process is slightly manual, as the reports have to be ran individually in a set and then combined with the script.

Once the folders are defined and added to testscript, it is done.
