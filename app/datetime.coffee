module.exports =
  current: () ->
    date = new Date()
    [Y, m, d, H, i, s] = [
      date.getFullYear(),
      ('0' + (date.getMonth() + 1)).slice(-2),
      ('0' + date.getDate()).slice(-2),
      ('0' + date.getHours()).slice(-2),
      ('0' + date.getMinutes()).slice(-2),
      ('0' + date.getSeconds()).slice(-2)
    ]
    return "#{Y}-#{m}-#{d} #{H}:#{i}:#{s}"
