Bleacon = require 'bleacon'

class Command
  run: =>
    Bleacon.startScanning('6b7aec1dc20b4f6ea14f32b5c8897b76', 0, 3)
    Bleacon.on 'discover', (bleacon) =>
      console.log major: bleacon.major, minor: bleacon.minor, bleacon.proximity, bleacon.rssi

command = new Command()
command.run()
