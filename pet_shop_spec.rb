require 'minitest/autorun'
require 'minitest/rg'
require_relative './pet_shop.rb'

class TestPetShop < Minitest::Test

  def setup

    @customers = [
      {
        name: "Luke",
        pets: [],
        cash: 1000
      },
      {
        name: "Liea",
        pets: [],
        cash: 1500
      }
    ]

    @new_pet = {
      name: "Ozzy",
      pet_type: :cat,
      breed: "Bengal",
      price: 100,
    }

    @pet_shop = {
      pets: [
        {
          name: "Freddie",
          pet_type: :cat,
          breed: "British Shorthair",
          price: 100,
        },
        {
          name: "Robert",
          pet_type: :cat,
          breed: "Persian",
          price: 200,
        },
        {
          name: "Elton",
          pet_type: :cat,
          breed: "Ragdoll",
          price: 300,
        },
        {
          name: "Stevie",
          pet_type: :cat,
          breed: "Maine Coon",
          price: 400,
        },
        {
          name: "Stacy",
          pet_type: :cat,
          breed: "Russian Blue",
          price: 500,
        }
      ],
      admin: {
        total_cash: 1000,
        pets_sold: 0,
      },
      name: "Cats in Space"
    }

  end

  def test_pet_shop_name
    name = pet_shop_name(@pet_shop)
    assert_equal("Cats in Space", name)
  end

  def test_total_cash
    sum = total_cash(@pet_shop)
    assert_equal(1000, sum)
  end

  def test_add_or_remove_cash_add
    add_or_remove_cash(@pet_shop, 10)
    cash = total_cash(@pet_shop)
    assert_equal(1010, cash)
  end

  def test_add_or_remove_cash_remove
    add_or_remove_cash(@pet_shop, -10)
    cash = total_cash(@pet_shop)
    assert_equal(990, cash)
  end

  def test_pets_sold
    sold = pets_sold(@pet_shop)
    assert_equal(0, sold)
  end

  def test_increase_pets_sold
    increase_pets_sold(@pet_shop,2)
    sold = pets_sold(@pet_shop)
    assert_equal(2, sold)
  end

end
