// these bindings are used when using mocha directly, not when using botium-cli
// for now, mocha direct doesn't produce attachments unfortunately.

const BotiumBindings = require('botium-bindings')

//process.env.BOTIUM_CONFIG='./botium-1.json'
const bb = new BotiumBindings({convodirs: ['spec/intents' ], name: 'Intents Tests'})
BotiumBindings.helper.mocha().setupMochaTestSuite({ bb })
