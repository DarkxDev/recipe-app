require 'rails_helper'

RSpec.describe 'recipe_foods/_recipe_food', type: :view do
  let(:recipe_food) { RecipeFood.new(quantity: 2, recipe_id: 1, food_id: 2) }

  before do
    render partial: 'recipe_foods/recipe_food', locals: { recipe_food: recipe_food }
  end

  it 'displays the quantity' do
    expect(rendered).to have_selector('p', text: 'Quantity:')
  end

  it 'displays the recipe ID' do
    expect(rendered).to have_selector('p', text: 'Recipe:')
  end

  it 'displays the food ID' do
    expect(rendered).to have_selector('p', text: 'Food:')
  end
end
