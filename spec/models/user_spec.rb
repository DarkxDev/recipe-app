require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with valid attributes' do
    user = User.new(
      name: 'John Doe',
      email: 'john.doe@example.com',
      password: 'password123',
      password_confirmation: 'password123'
    )
    expect(user).to be_valid
  end

  it 'is not valid without a name' do
    user = User.new(name: nil)
    expect(user).to_not be_valid
    expect(user.errors[:name]).to include("can't be blank")
  end

  it 'has many foods' do
    association = User.reflect_on_association(:foods)
    expect(association.macro).to eq(:has_many)
  end

  it 'has many recipes' do
    association = User.reflect_on_association(:recipes)
    expect(association.macro).to eq(:has_many)
  end
end
