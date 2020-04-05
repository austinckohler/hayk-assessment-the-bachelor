require "pry"



def get_first_name_of_season_winner(data, season)
  first_name_of_season_winner = data[season].find { |contestant_name| contestant_name['status'] == "Winner" }
  first_name_of_season_winner['name'].split.first
end

def all_contestants (data)
  data.values.flatten
end

def get_contestant_name(data, occupation)
  contestants = all_contestants(data)
 contestants.each do |contestant|
  if contestant["occupation"] == occupation
    return name = contestant["name"]
end
end
end


  
def count_contestants_by_hometown(data, hometown)
 counter = 0
 contestants = all_contestants(data)
 contestants.each do |contestant|
  if contestant["hometown"] == hometown
    counter += 1
#  binding.pry
end
end
counter 
end



def get_occupation(data, hometown)
  contestants = all_contestants(data)
  contestants.map  do |contestant|
    if contestant["hometown"] == hometown 
      return contestant["occupation"]
end
end
end

def get_average_age_for_season(data, season)
  age = 0
  counter = 0
  data[season].each do |all_contestants|
    all_contestants["age"] == "age"
    counter += 1 
    age += all_contestants["age"].to_f
  
end
answer = (age/counter).round
end
