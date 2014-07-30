require './lib/triangles'

def main_menu
  loop do
    puts "Push any key to continue and enter triangle sides:"
    puts 'x to exit'
    xchoice = gets.chomp
    if xchoice == 'x'
    exit
    end
    puts "\n"

    puts "Please enter side 1"
    side1 = gets.chomp.to_f
    puts "Please enter side 2"
    side2 = gets.chomp.to_f
    puts "Please enter side 3"
    side3 = gets.chomp.to_f

    @total_triangle = Triangles.new(side1, side2, side3)


    if @total_triangle.valid
      puts "Not a valid triangle"
    else
      puts "Triangle type is  #{@total_triangle.type}"
    end
  end
  main_menu
end
main_menu
