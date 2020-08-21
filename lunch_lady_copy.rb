
require_relative "dish"
require_relative "restarant"


    def main_dish_number
       @main_dishes.each_with_index do |dish, index|
       puts "#{index + 1}) #{dish.name} at $#{dish.price}"
      end
    end

    def main_dish_menu
      puts "What would you like to order"
      main_dish_number
        choice = gets.to_i
        case choice
        when 1
          puts "Your main dish is #{@main_dishes[choice - 1].name}"
        when 2
          puts "Your main dish is #{@main_dishes[choice - 1].name}"
        when 3
          puts "Your main dish is #{@main_dishes[choice - 1].name}"
        when 4
          puts "Your main dish is #{@main_dishes[choice - 1].name}"
        else
          puts "Try again"
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
        case choice
        when 1
          puts "Your side dish is #{@side_dishes[choice - 1].name}"
        when 2
          puts "Your side dish is #{@side_dishes[choice - 1].name}"
        when 3
          puts "Your side dish is #{@side_dishes[choice - 1].name}"
        when 4
          puts "Your side dish is #{@side_dishes[choice - 1].name}"
        else
          puts "Try again"
          side_dish_menu
        end
        @checkout_cost << @main_dishes[choice - 1].price
        @what_was_ordered << @main_dishes[choice - 1].name
        side_dish_menu_two
    end

    def side_dish_menu_two
      @side_dishes.each_with_index do |dish, index|
      end
      choice = gets.to_i
        case choice
        when 1
          puts "and #{@side_dishes[choice - 1].name}"
        when 2
          puts "and #{@side_dishes[choice - 1].name}"
        when 3
          puts "and #{@side_dishes[choice - 1].name}"
        when 4
          puts "and #{@side_dishes[choice - 1].name}"
        else
          puts "Try again"
          side_dish_menu_two
        end
        @checkout_cost << @main_dishes[choice - 1].price
        @what_was_ordered << @main_dishes[choice - 1].name
      checkout_here
    end

    def checkout_here
      puts "You ordered #{@what_was_ordered}"
      puts "and your total is $#{@checkout_cost.sum}"
    end



Restarant.new