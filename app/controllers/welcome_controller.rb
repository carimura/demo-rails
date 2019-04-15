class WelcomeController < ApplicationController
  def index
    @dogs = Dog.all
    puts "I'm welcoming someone!"
  end
end
