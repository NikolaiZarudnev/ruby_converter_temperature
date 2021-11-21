class IOAdapter
  def puts_menu
    puts "Сhoose an action:\n1. Convert from C\n2. Convert from K\n3. Convert from F\n4. Exit\n"
  end

  def invalid_input(func, var); end

  def input_scale
    puts_menu
    menu = { '1' => 'C',
             '2' => 'K',
             '3' => 'F',
             '4' => 'EXIT' }
    ch = gets.chomp
    if check_choice(menu[ch]) == false
      input_scale
    else
      menu[ch]
    end
  end

  def output_scale(choice)
    menu = { 'C' => %w[K F],
             'K' => %w[C F],
             'F' => %w[C K] }
    menu[choice]
  end

  def input_value(choice)
    puts 'Enter value'
    print("#{choice} = ")
    t = gets.chomp
    if check_value(t)
      Float(t)
    else
      input_value(choice)
    end
  end

  def output_value(scale, res)
    puts(scale << ' = ' << res.to_s)
  end

  def check_value(value)
    !Float(value).nil?
  rescue StandardError
    puts('Invalid input')
    false
  end

  def check_choice(choice)
    case choice
    when 'EXIT'
      puts('Good luck')
      abort
    when nil
      puts('Invalid input')
      false
    else
      true
    end
  end
end
