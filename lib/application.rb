require './lib/convert'
require './lib/io_interface'

class Application
  def run
    io_inteface = IOInterface.new
    choice = io_inteface.choice_scale
    while choice != 4
      case choice
        when '1'
          t = io_inteface.input_value
          io_inteface.output_value('K', ConvertTemperature.new('C', 'K', t).convert)
          io_inteface.output_value('F', ConvertTemperature.new('C', 'F', t).convert)
        break
        when '2'
          t = io_inteface.input_value
          io_inteface.output_value('C', ConvertTemperature.new('K', 'C', t).convert)
          io_inteface.output_value('F', ConvertTemperature.new('K', 'F', t).convert)
        break
        when '3'
          t = io_inteface.input_value
          io_inteface.output_value('C', ConvertTemperature.new('F', 'C', t).convert)
          io_inteface.output_value('K', ConvertTemperature.new('F', 'K', t).convert)
        break
        else
          puts 'Invalid Choice'
      end
      choice = io_inteface.choice_scale
    end
  end
end
