module Codebreaker
  class Game
    def initialize(output)
      @output ||= output
      @mark ||= ""
    end

    def start(secret)
      @secret = secret
      @output.puts "Welcome to Codebreaker!"
      @output.puts "Enter Guess:"
    end
    def guess(guess)
      mark = Marker.new(@secret, guess)
      @output.puts '+' * mark.exact_match_count + "-" * mark.number_match_count
    end
  end
end
