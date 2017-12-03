collect = require './collect'
datetime = require './datetime'

CronJob = require('cron').CronJob

job = new CronJob
  cronTime: '* * * * * *'
  onTick: () ->
    # TODO: what should the cron do
    console.log datetime.current()
    collect.fetch()
  onComplete: () ->
    # TODO: after the cron
  start: true
  timeZone: 'Europe/Paris'

# Crontab
# collect.fetch()
# setInterval collect.fetch, 10000
