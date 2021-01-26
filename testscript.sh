#!/bin/bash

echo " WA TEST ";

#run each test bucket individually... i know..there is no other way if you want the report to be grouped in a clean way
npx dotenv -- botium-cli run mochawesome --convos spec/UAT --reporter-options reportDir=mocha-test-uat --testsuitename "User Acceptance Tests"
npx dotenv -- botium-cli run mochawesome --convos spec/intents --reporter-options reportDir=mocha-test-intents --testsuitename "Intents"
#npx dotenv -- botium-cli run mochawesome --convos spec/intents --reporter-options reportDir=mocha-test-zintents --testsuitename "Intent Tests"

mochaJSONs=()
for f in ./mocha-test-*/mochawesome.json; do
  echo "Found report file: $f"
  mochaJSONs+=($f)
done

#Merge all report files into one
npx mochawesome-merge ${mochaJSONs[@]} -o ./mochawesome-report/mochawesome.json

#generate single report site from merged report
npx mochawesome-report-generator ./mochawesome-report/mochawesome.json --charts --reportPageTitle "Botium Test Reports" --code false --reportFilename index

#clean up
rm -rf mocha-test-*
