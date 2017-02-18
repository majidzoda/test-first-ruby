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


# class Timer
#   attr_accessor :seconds
#
#   def initialize
#     @seconds = 0
#   end
#
#   def time_string
#     hours = @seconds / (60 * 60)
#     minutes = (@seconds % (60 * 60)) / 60
#     seconds = (@seconds % 60)
#
#     [Timer.format_num(hours), Timer.format_num(minutes), Timer.format_num(seconds)].join(":")
#   end
#
#   private
#   def Timer.format_num(num)
#     (num < 10) ? "0#{num}" : num.to_s
#   end
# end
