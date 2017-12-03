datetime = require './datetime'
Client = require('coinbase').Client

# Connection to coinbase API
client = new Client
  apiKey: '9Yj6DpFBxy9ewoUa'
  apiSecret: 'VNoDxkkZ8YHS4RIXRpPhOeE78w9qoJj5'
  version: '2017-12-03'

module.exports =
  # Method to fetch current BTC price in USD
  fetch: () ->
    client.getSpotPrice { currency: 'USD' }, (err, res) ->
      date = datetime.current()
      { base, currency, amount } = res.data
      console.log "#{date}: 1 #{base} = #{amount} #{currency}"
