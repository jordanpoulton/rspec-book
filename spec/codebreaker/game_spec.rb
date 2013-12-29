require 'spec_helper'

module Codebreaker
  describe Game do
    #Let and Before are doing the same thing here. If you wanted to change from before to let, get rid of all the @ symbols from the instance variables

    before(:each) do
      @output = double('output').as_null_object
      @game = Game.new(@output)
    end

    describe '#start' do #describe() creates and example group

      #let(:output) {double('output').as_null_object}
      #let(:game) {Game.new(output)}

      it "sends a welcome message" do #it() creates an example
        @output.should_receive(:puts).with('Welcome to Codebreaker!')

        @game.start('1234')
      end
      it "prompts for the first guess" do
        @output.should_receive(:puts).with('Enter Guess:')
        @game.start('1234')
      end
    end
    describe '#guess' do
      it "sends the mark to the output" do
        @game.start('1234')
        @output.should_receive(:puts).with('++++')
        @game.guess('1234')
      end
    end
  end
end
