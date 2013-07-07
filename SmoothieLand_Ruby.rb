# Recipes = [
#           new_recipe = { 
#                     :base => "milk",
#                     :servings => 2
#                     :ingredients = [{
#                                     :item=> "banana"
#                                     :item_qty => 1
#                                     :item_units => "each"
#                                     }]
#           ]

#-------Welcome Prompt 
  
class Recipe 
  def self.execute
    puts "Welcome to SmoothieLand!" 
    puts "Options press: 1)To enter new 'Jackpot' recipe. 2)To see instructions"
    option = gets.chomp.to_i
    if option == 2
      Recipe.give_instructions
    else
      x = Recipe.new  
    end
  end

  def Recipe.give_instructions
    puts "Are you new to making your own smoothie recipes? Is it driving you bonkers trying to find good ingredient combinations? And when you hit a 'jackpot' recipe, don't you feel so good and want to share it? That's what SmootieLand is here to do: make it easy for you to share those 'gem' recipes." 
    puts "Ready? Hit enter key."
    gets
    x = Recipe.new 
  end
#-------User creating new recipes
  attr_accessor :servings, :base, :ingredients # automatically gives you the keys for an instance you will create.
  
  @@all_recipes = []
  
  def initialize
    puts "Okay, ready to upload your recipe? \n (Hit enter key to start)"
    gets
    create_recipe
  end
  
  
    # self.servings = gets.chomp.to_i  # stopped here Tuesday (7/2)
    # servings = gets.chomp
    # @@all_recipes << servings

  # @new_recipe = {servings: "", base: "", ingredients:[]} - Doesn't work when I try to add servings value from line 57

  

  def create_recipe
    puts "\n"
    puts "Please enter the number of servings your smoothie recipe makes."
    answer_servings = gets.chomp.to_i
    puts "Cool, you entered #{answer_servings} servings. \n (Hit enter to conitnue)"
    gets
    self.servings = answer_servings # self is an instance (in this case)
    puts "Is it a juice-based or milk-based smoothie?"
    answer_base = gets.chomp
    self.base = answer_base
  end

end 

Recipe.execute  


#Sonny's feedback is below........

  # has base
  # specify servings ( default to original recipe )
  # has ingredients

#   @ingredients = []



# # Thoughts on how to script it!
# class Recipe
# class Ingredient

#   # food
#   # has qty
#   # has units
#   h = {}


# end

# # main

# recipe1 = Recipe.new



# recipe = {
#   ingredient: [
#   ]
# }