require 'rails_helper'

RSpec.describe 'recipes/_recipe', type: :view do
  let(:recipe) do
    Recipe.new(
      name: 'Pasta',
      preparation_time: 10,
      cooking_time: 20,
      description: 'Delicious pasta recipe',
      public: true
    )
  end

  it 'displays the recipe name' do
    render partial: 'recipes/recipe', locals: { recipe: }
    expect(rendered).to have_content('Name:')
    expect(rendered).to have_content('Pasta')
  end

  it 'displays the recipe preparation time' do
    render partial: 'recipes/recipe', locals: { recipe: }
    expect(rendered).to have_content('Preparation time:')
    expect(rendered).to have_content(10)
  end

  it 'displays the recipe cooking time' do
    render partial: 'recipes/recipe', locals: { recipe: }
    expect(rendered).to have_content('Cooking time:')
    expect(rendered).to have_content(20)
  end

  it 'displays the recipe description' do
    render partial: 'recipes/recipe', locals: { recipe: }
    expect(rendered).to have_content('Description:')
    expect(rendered).to have_content('Delicious pasta recipe')
  end

  it 'displays whether the recipe is public' do
    render partial: 'recipes/recipe', locals: { recipe: }
    expect(rendered).to have_content('Public:')
    expect(rendered).to have_content('true')
  end
end
