class IOAdapter
  def puts_menu
      puts "Сhoose an action:
              1. Convert from C
              2. Convert from K
              3. Convert from F
              4. Exit"
  end

  def choose_scale()
    puts_menu
    choice = gets.chomp
    return choice
  end

  def input_value()
    puts 'Enter value'
    t = gets.chomp
    return Float(t)
  end

  def output_value(scale, res)
    puts(scale << ' = ' << res.to_s)
  end
  
  #def choice_scale(choice)
  #  convert_temper = { '1' => ConvertTemperature.new('C', 'K', t).convert,
  #                     '2' => ConvertTemperature.new('K', 'C', t).convert,
  #                     '3' => ConvertTemperature.new('F', 'C', t).convert}
  #  convert_temper[choice].call()
  #end
end