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
    @main_dishes = [ Dish.new("spagati", 3.56), Dish.new("chicken", 20.00)]
    @side_dishes = [ Dish.new("rice", 3.56), Dish.new("fries", 2.00)]
    @checkout_cost = 0
    main_dish_menu
  end


    def main_dish_menu
      puts "What would you like to order"
      @main_dishes.each_with_index do |dish, index|
        puts "#{index + 1}) #{dish.name} #{dish.price}"
      end
        choice = gets.to_i
          case choice
          when 1
            puts "You ordered spaget"
          when 2 
            puts "you get chiclen"
          end
      side_dish_menu
    end

    def side_dish_menu
      puts "how pick two options"
      @side_dishes.each_with_index do |dish, index|
        puts "#{index + 1}) #{dish.name} #{dish.price}"
      end
      choice = gets.to_i
        case choice
        when 1
          "you get rice"
        when 2
          "you get fires"
        end
    end



end

Restarant.new