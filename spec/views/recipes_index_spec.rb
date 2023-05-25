require 'rails_helper'

RSpec.describe 'recipes/index', type: :view do
  before do
    assign(:recipes, [
             Recipe.create(name: 'Pasta', description: 'Delicious pasta recipe'),
             Recipe.create(name: 'Pizza', description: 'Tasty pizza recipe')
           ])
  end

  it 'displays the recipe names' do
    render
    expect(rendered).to have_content('Pasta')
    expect(rendered).to have_content('Pizza')
  end

  it 'displays the recipe descriptions' do
    render
    expect(rendered).to have_content('Delicious pasta recipe')
    expect(rendered).to have_content('Tasty pizza recipe')
  end

  it 'displays the "Remove" buttons for each recipe' do
    render
    expect(rendered).to have_button('Remove', count: 2)
  end

  it 'displays the "New recipe" link' do
    render
    expect(rendered).to have_link('New recipe', href: new_recipe_path)
  end
end
