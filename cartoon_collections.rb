# require "pry"
def roll_call_dwarves(dwarves_array)
  # Your code here
  dwarves_array.each { |dwarf| puts (1 + dwarves_array.index(dwarf)).to_s + ". " + dwarf}
end

def summon_captain_planet(planeteer_calls)
  # Your code here
  planeteer_calls.map { |name| name.capitalize + "!"}
end

def long_planeteer_calls(words_array)
  # Your code here
  is_larger = []

  words_array.each do |word|
    if word.size > 4
      is_larger.push(true)
    else
      is_larger.push(false)
    end
  end

  if is_larger.include?(true) && !is_larger.include?(false)
    true
  elsif is_larger.include?(false) && !is_larger.include?(true)
    false
  elsif is_larger.include?(true) && is_larger.include?(false)
    true
  end
end

def find_the_cheese(food_array)
  # the array below is here to help
  cheese_types = ["cheddar", "gouda", "camembert"]

  food_array.each do |food| cheese_types.include?(food)
  if cheese_types.include?(food)
  puts "Returning correct food: " + food
  else
  puts "Deleting food: " + food
  food_array.delete(food)
  end
  end
  return food_array.join if cheese_types.include?(food_array.join)

end

roll_call_dwarves(["bashful", "dopey", "sleepy"])
summon_captain_planet(["earth", "wind", "fire", "water", "heart"])
long_planeteer_calls(["one", "foo"]) #false
long_planeteer_calls(["1", "2", "sixteen"]) #true
find_the_cheese(["soup", "basil", "gouda"]) #gouda
find_the_cheese(["soup", "basil", "crackers"]) #nil
