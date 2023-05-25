require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  let(:recipe) { Recipe.create(name: 'Apple Pie') }
  let(:food) { Food.create(name: 'Apple') }

  it 'is valid with valid attributes' do
    recipe_food = RecipeFood.new(
      recipe: recipe,
      food: food
    )
    expect(recipe_food).to be_valid
  end

  it 'belongs to a recipe' do
    association = RecipeFood.reflect_on_association(:recipe)
    expect(association.macro).to eq(:belongs_to)
  end

  it 'belongs to a food' do
    association = RecipeFood.reflect_on_association(:food)
    expect(association.macro).to eq(:belongs_to)
  end
end
