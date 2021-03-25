require "time"

module Clock
  def log_time
    start = Time.now
    if block_given?
      yield
    else
      return puts "No block given"
    end
    (Time.now - start).round(3)
  end
  module_function :log_time
    attr_reader :started, :ended
  class Timer
    def initialize
      @started = false
      @ended = false
    end

    # The alert is a bip but it doesn't works on all computers
    def start(time, alert = false)
      @started = true
      timeout(time)
      print "\a" if alert
      "Process finished in #{time} second#{time > 1 ? "s" : ""}"
    end

    def start?
      @started
    end

    def end?
      @ended
    end
    private def timeout(sec)
      sleep(sec)
      yield(sec) if block_given?
    end
  end # Class
end # Module