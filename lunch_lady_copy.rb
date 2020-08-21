
require_relative "dish"
require_relative "restarant"


def main_dish_menu
  puts "What would you like to order?"
  main_dish_number
    choice = gets.to_i
    if choice > 0 && choice <= @main_dishes.length
      puts "Your main dish is #{@main_dishes[choice - 1].name}"
    else
     puts "Invalid Choice, Try Again"
     main_dish_menu
    end
  @checkout_cost << @main_dishes[choice - 1].price
  @what_was_ordered << @main_dishes[choice - 1].name
  side_dish_menu
end

def side_dish_menu
  puts "now pick two options"
  @side_dishes.each_with_index do |dish, index|
    puts "#{index + 1}) #{dish.name} $#{dish.price}"
  end
  choice = gets.to_i
    if choice > 0 && choice <= @side_dishes.length
      puts "Your main dish is #{@side_dishes[choice - 1].name}"
    else
    puts "Invalid Choice, Try Again"
    side_dish_menu
    end
  @checkout_cost << @side_dishes[choice - 1].price
  @what_was_ordered << @side_dishes[choice - 1].name
  side_dish_menu_two
end

def side_dish_menu_two
  choice = gets.to_i
      if choice > 0 && choice <= @side_dishes.length
        puts "Your main dish is #{@side_dishes[choice - 1].name}"
      else
      puts "Invalid Choice, Try Again"
      side_dish_menu_two
      end
  @checkout_cost << @side_dishes[choice - 1].price
  @what_was_ordered << @side_dishes[choice - 1].name
  checkout_here
end

def checkout_here
  puts "You ordered #{@what_was_ordered}"
  puts "and your total is $#{@checkout_cost.sum}."
end



Restarant.new