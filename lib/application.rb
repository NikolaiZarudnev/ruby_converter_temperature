require './lib/convert_temperature.rb'
require './lib/io_adapter'

class Application
  def run
    io_adapter = IOAdapter.new
    choice = 0
    while choice != 4
      choice = io_adapter.choose_scale
      case choice
        when '1'
          t = io_adapter.input_value
          io_adapter.output_value('K', ConvertTemperature.new('C', 'K', t).convert)
          io_adapter.output_value('F', ConvertTemperature.new('C', 'F', t).convert)
        break
        when '2'
          t = io_adapter.input_value
          io_adapter.output_value('C', ConvertTemperature.new('K', 'C', t).convert)
          io_adapter.output_value('F', ConvertTemperature.new('K', 'F', t).convert)
        break
        when '3'
          t = io_adapter.input_value
          io_adapter.output_value('C', ConvertTemperature.new('F', 'C', t).convert)
          io_adapter.output_value('K', ConvertTemperature.new('F', 'K', t).convert)
        break
        when '4'
        break
        else
          puts 'Invalid Choice'
      end
    end
  end
end
