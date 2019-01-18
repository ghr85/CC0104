def get_name(person)
  return person[:name]
end

def get_tv_show(person)
  return person[:favourites][:tv_show]
end

def get_fav_food(person)
  return person[:favourites][:snacks][0]
end

def adding_friend(person, friend)
  person[:friends].push(friend)
end
def losing_friend(person, friend)
  person[:friends].delete(friend)
end

def get_money(people)
  total = 0
  for persons in people
    total += persons[:monies]
  end
  return total
end

def lend_money(lender,lendee,amount)
  lender[:monies]-= amount
  lendee[:monies]+= amount
end


def get_food(people)
total = []
  for persons in people
    total += persons[:favourites][:snacks]
  end
  return total
  # Simpler version:
  # def all_favourite_foods(people)
  #   favourite_foods = []
  #   for person in people
  #     favourite_foods.concat(person[:favourites][:snacks])
  #   end
  #   return favourite_foods
  # end
end
