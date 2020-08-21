class Restarant

  def initialize
    @main_dishes = [ Dish.new("Hamburger", 10.49), Dish.new("Chicken", 13.00), Dish.new("Steak", 20.00), Dish.new("Soup", 19.99)]
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
end