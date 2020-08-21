# the user chooses from a list of main dishes
# the user chooses 2 side dish items
# computer repeats users order
# computer totals lunch items and displays total

# Dish - handles both main and side dish - Class
# {name: 'string here', price: float, type: "side" || "main"}
# A Dish is an instance of your class Dish
# Side Dish Class and Main Dish Class

# app.rb that hold the classes?

class Dish
  attr_accessor :name, :price

  def initialize(name, price)
    @price = price
    @name = name
  end

end

# resterant class?
class Restarant

  def initialize
    @main_dishes = [ Dish.new("Spagati", 10.49), Dish.new("Chicken", 13.00), Dish.new("Steak", 20.00), Dish.new("Soup", 19.99)]
    @side_dishes = [ Dish.new("Rice", 3.56), Dish.new("Fries", 4.99), Dish.new("Veggies", 2.99), Dish.new("Chips", 1.99)]
    @checkout_cost = []
    @what_was_ordered = []
    main_dish_menu
  end

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
          @checkout_cost << @main_dishes[choice - 1].price
          @what_was_ordered << @main_dishes[choice - 1].name
        when 2
          puts "Your main dish is #{@main_dishes[choice - 1].name}"
          @checkout_cost << @main_dishes[choice - 1].price
          @what_was_ordered << @main_dishes[choice - 1].name
        when 3
          puts "Your main dish is #{@main_dishes[choice - 1].name}"
          @checkout_cost << @main_dishes[choice - 1].price
          @what_was_ordered << @main_dishes[choice - 1].name
        when 4
          puts "Your main dish is #{@main_dishes[choice - 1].name}"
          @checkout_cost << @main_dishes[choice - 1].price
          @what_was_ordered << @main_dishes[choice - 1].name
        else
          puts "Try again"
          main_dish_menu
    end

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
          @checkout_cost << @side_dishes[choice - 1].price
          @what_was_ordered << @side_dishes[choice - 1].name
        when 2
          puts "Your side dish is #{@side_dishes[choice - 1].name}"
          @checkout_cost << @side_dishes[choice - 1].price
          @what_was_ordered << @side_dishes[choice - 1].name
        when 3
          puts "Your side dish is #{@side_dishes[choice - 1].name}"
          @checkout_cost << @side_dishes[choice - 1].price
          @what_was_ordered << @side_dishes[choice - 1].name
        when 4
          puts "Your side dish is #{@side_dishes[choice - 1].name}"
          @checkout_cost << @side_dishes[choice - 1].price
          @what_was_ordered << @side_dishes[choice - 1].name
        else
          puts "Try again"
          side_dish_menu
        end
        side_dish_menu_two
    end

    def side_dish_menu_two
      @side_dishes.each_with_index do |dish, index|
      end
      choice = gets.to_i
        case choice
        when 1
          puts "and #{@side_dishes[choice - 1].name}"
          @checkout_cost << @side_dishes[choice - 1].price
          @what_was_ordered << @side_dishes[choice - 1].name
        when 2
          puts "and #{@side_dishes[choice - 1].name}"
          @checkout_cost << @side_dishes[choice - 1].price
          @what_was_ordered << @side_dishes[choice - 1].name
        when 3
          puts "and #{@side_dishes[choice - 1].name}"
          @checkout_cost << @side_dishes[choice - 1].price
          @what_was_ordered << @side_dishes[choice - 1].name
        when 4
          puts "and #{@side_dishes[choice - 1].name}"
          @checkout_cost << @side_dishes[choice - 1].price
          @what_was_ordered << @side_dishes[choice - 1].name
        else
          puts "Try again"
          side_dish_menu_two
        end
      checkout_here
    end

    def checkout_here
      puts "You ordered #{@what_was_ordered}"
      puts "and your total is $#{@checkout_cost.sum}"
    end


end

Restarant.new