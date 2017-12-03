collect = require './jobs/collect'
CronJob = require('cron').CronJob

module.exports =
  # Schedule CRON jobs
  schedule: () ->
    # Fetch BTC price in USD by minute
    job = new CronJob
      cronTime: '00 * * * * *'
      onTick: collect.spotPrice
      start: true
      timeZone: 'Europe/Paris'
