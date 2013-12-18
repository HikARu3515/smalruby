require 'dino'
require_relative 'board.rb'
require_relative 'led.rb'

board = Smalruby::Ardino::Board.new
led = Smalruby::Ardino::Led.new(pin: 13, board: board)

[:on, :off].cycle do |switch|
  led.send(switch)
  sleep 1
end