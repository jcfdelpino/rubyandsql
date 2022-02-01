# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/0-classes.rb

brians_favorite_food = "tacos"
puts brians_favorite_food.class
puts brians_favorite_food.upcase  #.upcase is what we call a 'method'

number_of_tacos = 5
puts number_of_tacos.class


# String Class

# String Methods
class Dog #always starts with a capital letter and is singular
    def speak
        puts "Woof"
    end
end

jenkins = Dog.new
jenkins.speak