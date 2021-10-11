require './lib/convert'

def puts_menu
    puts"Сhoose an action:
    	1. Convert from C
    	2. Convert from K
    	3. Convert from F
    	4. Exit"
end
puts_menu()

choice=gets.chomp
while(choice != 4)
    case choice
    when '1'
		puts "Enter value"
		t=gets.chomp
  		t = Float(t)
		res = ConvertTemperature.new('C', 'K', t).converter
		puts("K = " << res.to_s)
		res = ConvertTemperature.new('C', 'F', t).converter
		puts("F = " << res.to_s)
    	break puts_menu()
    when '2'   
    	puts "Enter value"
		t=gets.chomp
  		t = Float(t)
		res = ConvertTemperature.new('K', 'C', t).converter
		puts("C = " << res.to_s)
		res = ConvertTemperature.new('K', 'F', t).converter
		puts("F = " << res.to_s)
    	break puts_menu()
    when '3'
    	puts "Enter value"
		t=gets.chomp
  		t = Float(t)
		res = ConvertTemperature.new('F', 'C', t).converter
		puts("C = " << res.to_s)
		res = ConvertTemperature.new('F', 'K', t).converter
		puts("K = " << res.to_s)
    	break puts_menu()
    else
    	puts"Invalid Input/Choice"
		puts_menu()
    end
end