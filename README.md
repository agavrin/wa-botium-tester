# WA Botium Tester

# Installation

```sh
npm i
```

# Setting Up connection to Watson Assistant

```sh
cp .env.example .env
```

- Copy example .env file to .env
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

## Creating more folders in spec

Follow the script format in ./testscript.sh and add more lines to it

The setup process is slightly manual, as the reports have to be ran individually in a set and then combined with the script.

Once the folders are defined and added to testscript, it is done.

## Publishing Mochawesome Report site

To lock the site, use a [Staticfile.auth](https://hostingcanada.org/htpasswd-generator/) file in mochawesome-report

```sh
ibmcloud cf push -f manifest-report.yml
```

https://cvs-wavi-report.mybluemix.net/

# Running Tests Using Mocha

For integration with CI/CD pipeline in the future

```sh
npm run mocha
```
