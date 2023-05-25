require 'rails_helper'

RSpec.describe 'recipe_foods/index', type: :view do
  before do
    assign(:recipe_foods, [
             RecipeFood.new(id: 1),
             RecipeFood.new(id: 2)
           ])
  end

  it 'renders the recipe_food partial for each recipe food' do
    render
    expect(view).to render_template(partial: '_recipe_food', count: 2)
  end

  it 'displays a link to show each recipe food' do
    render
    expect(rendered).to have_selector('a', text: 'Show this recipe food', count: 2)
  end

  it 'displays a link to create a new recipe food' do
    render
    expect(rendered).to have_link('New recipe food', href: new_recipe_food_path)
  end
end
