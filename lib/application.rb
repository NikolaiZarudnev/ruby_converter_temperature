require './lib/convert_temperature'
require './lib/io_adapter'

class Application
  def convert_launch(choice, temperature)
    io = IOAdapter.new
    io.output_scale(choice).each { |x| io.output_value(x, ConvertTemperature.new(choice, x, temperature).convert) }
  end

  def run
    io = IOAdapter.new
    loop do
      choice = io.input_scale
      temperature = io.input_value(choice)
      convert_launch(choice, temperature)
    end
  end
end
