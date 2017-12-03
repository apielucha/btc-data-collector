module.exports =
  DateTime: class DateTime
    # Initializes to current datetime
    constructor: () ->
      this.datetime = new Date()

    # Formats datetime to Y-m-d H:i:s and returns it
    format: () ->
      date = this.datetime
      [Y, m, d, H, i, s] = [
        date.getFullYear(),
        ('0' + (date.getMonth() + 1)).slice(-2),
        ('0' + date.getDate()).slice(-2),
        ('0' + date.getHours()).slice(-2),
        ('0' + date.getMinutes()).slice(-2),
        ('0' + date.getSeconds()).slice(-2)
      ]
      return "#{Y}-#{m}-#{d} #{H}:#{i}:#{s}"

    # Returns the datetime timestamp
    timestamp: () ->
      return this.datetime.getTime()
