require 'pry'

class Customer
  attr_accessor :name, :age

  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip)
  end

  def meals
    Meal.all.select do |meal|
    meal.customer == self
  end

end

end

otto = Customer.new("Otto", 34)
josh = Waiter.new("Josh", 4)
binding.pry
