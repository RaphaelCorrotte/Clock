require_relative "clock/version"
require_relative "clock/timer"

a = Clock::Timer.new(0, 5)
a.start