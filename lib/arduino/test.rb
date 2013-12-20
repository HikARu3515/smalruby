require 'dino'
require_relative 'board.rb'
require_relative 'led.rb'
require_relative 'rgb_led.rb'

board = Smalruby::Arduino::Board.new
led1 = Smalruby::Arduino::Led.new(pin: 11, board: board)
led2 = Smalruby::Arduino::Led.new(pin: 12, board: board)
led3 = Smalruby::Arduino::Led.new(pin: 13, board: board)
rgb_led = Smalruby::Arduino::Rgb_led.new(pins: {red: 13, blue: 11, green: 10}, board: board)


loop do
  p hoge = [:red, :blue, :green][rand(3)]
  #rgb_led.send(hoge)
  sleep 0.5
end