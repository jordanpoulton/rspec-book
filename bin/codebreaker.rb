#!/usr/bin/env ruby
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'lib/codebreaker/codebreaker'

game = Codebreaker::Game.new(STDOUT)
game.start
