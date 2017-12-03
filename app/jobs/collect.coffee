API = require('../../.env.coffee').API
Client = require('coinbase').Client
DateTime = require('../modules/datetime').DateTime

# Connection to coinbase API
client = new Client
  apiKey: API.KEY
  apiSecret: API.SECRET
  version: API.VERSION

module.exports =
  # Method to fetch current BTC price in USD
  spotPrice: () ->
    start = Date.now()

    client.getSpotPrice { currency: 'USD' }, (err, res) ->

      date = (new DateTime).format()
      { base, currency, amount } = res.data
      console.log "#{date} -> 1 #{base} = #{amount} #{currency}"

      console.log 'Response time: ' + (Date.now() - start)
      console.log '---------------------------------------'
