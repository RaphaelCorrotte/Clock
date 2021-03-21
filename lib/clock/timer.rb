require "time"

module Clock
  class Timer
    attr_reader :starts, :ends, :mode
    def initialize(starts, ends, mode = "seconds") # Modes are timestamp and seconds
      @starts = starts
      @ends = ends
      @mode = mode
    end
    def start
      case @mode
      when "seconds"
        puts "the string starts with one"
      else
        raise

      end
    end
  end
end