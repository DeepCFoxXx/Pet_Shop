def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

# def stock_count(pet_shop)
#   return pets_in_stock(pet_shop).count
# end

def add_or_remove_cash(shop, amount)
  shop[:admin][:total_cash] += amount
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, amount)
  shop [:admin][:pets_sold] += amount
end

def stock_count(shop)
  shop[:pets].length
end

def pets_by_breed(shop, breed)
  pets = []

  for pet in shop[:pets]
    if pet[:breed] == breed
      pets.push(pet)
    end
  end

  return pets

end

def find_pet_by_name(shop, name)
  pets = nil
  
  for pet in shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return pets
end
