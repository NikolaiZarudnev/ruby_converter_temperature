class ConvertTemperature
  def initialize(from_value, to_value, value)
    @from_value = from_value
    @to_value = to_value
    @value = value
  end

  def convert
    convert_temper = {
      'C' => {
        'F' => ->(x) { 1.8 * x + 32 },
        'K' => ->(x) { x + 273.15 }
      },
      'F' => {
        'C' => ->(x) { 0.56 * (x - 32) },
        'K' => ->(x) { 0.56 * (x - 32) + 273.15 }
      },
      'K' => {
        'C' => ->(x) { x - 273.15 },
        'F' => ->(x) { (x - 273.15) * 1.8 + 32 }
      }
    }
    convert_temper[@from_value][@to_value].call(@value)
  end
end
