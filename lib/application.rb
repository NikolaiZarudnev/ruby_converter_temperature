require './lib/convert_temperature'
require './lib/io_adapter'

class Application
  def run
    io = IOAdapter.new
    loop do
      choice = io.input_scale
      t = io.input_value(choice)
      io.output_scale(choice).each { |x| io.output_value(x, ConvertTemperature.new(choice, x, t).convert) }
    end
  end
end
