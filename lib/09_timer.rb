class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
      h = @seconds / (60 * 60)
      m = (@seconds % (60 * 60)) / 60
      s = (@seconds % 60)

      [Timer.formmaterForLessThen10(h), Timer.formmaterForLessThen10(m), Timer.formmaterForLessThen10(s)].join(":")
    end

    def Timer.formmaterForLessThen10(time)
      return "0"+time.to_s if time < 10
      return time.to_s
    end
end
