

def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  return pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, sold)
  return pet_shop[:admin][:pets_sold] += sold
end

def stock_count(pet_shop)
  return pet_shop[:pets].count()
end

def pets_by_breed(pet_shop, breed)
  pets_found = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      pets_found << pet
    end
  end
  return pets_found
end

def find_pet_by_name(pet_shop, pet_name)
  for found_pet in pet_shop[:pets]
    if found_pet[:name] == pet_name
      return found_pet
    end
  end
    return nil
end

def remove_pet_by_name(pet_shop, pet_name)
  for removed_pet in pet_shop[:pets]
    if removed_pet[:name] == pet_name
      pet_shop[:pets].delete(removed_pet)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
  return pet_shop[:pets].count()
end

def customer_pet_count(customers)
  return customers[:pets].count()
end

def add_pet_to_customer(customers, new_pet)
  return customers[:pets] << new_pet
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  end
  return false
end
