require 'rails_helper'

RSpec.describe 'foods/_food', type: :view do
  let(:food) do
    Food.new(
      name: 'Apple',
      measurement_unit: 'Piece',
      price: 1,
      quantity: 10,
      user_id: 1
    )
  end

  it 'displays the food name' do
    render partial: 'foods/food', locals: { food: food }
    expect(rendered).to have_content('Name:')
    expect(rendered).to have_content('Apple')
  end

  it 'displays the food measurement unit' do
    render partial: 'foods/food', locals: { food: food }
    expect(rendered).to have_content('Measurement unit:')
    expect(rendered).to have_content('Piece')
  end

  it 'displays the food price' do
    render partial: 'foods/food', locals: { food: food }
    expect(rendered).to have_content('Price:')
    expect(rendered).to have_content('1')
  end

  it 'displays the food quantity' do
    render partial: 'foods/food', locals: { food: food }
    expect(rendered).to have_content('Quantity:')
    expect(rendered).to have_content('10')
  end

  it 'displays the food user ID' do
    render partial: 'foods/food', locals: { food: food }
    expect(rendered).to have_content('User:')
    expect(rendered).to have_content('1')
  end
end
