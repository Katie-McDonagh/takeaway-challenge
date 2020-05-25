class Menu

  attr_reader :dishes

  def initialize(dishes)
    @dishes = dishes
  end

  def display_menu
    @dishes.map { |object, price| "%s £%.2f" % [object.to_s, price] }.join(", ")
  end

  def has_dish?(dish)
    !dishes[dish].nil?
  end

  def price(dish)
    dishes[dish]
  end
end 
