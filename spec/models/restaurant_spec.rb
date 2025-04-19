require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  it "is valid with valid attributes" do
    restaurant = Restaurant.new(name: "Le Gourmet", address: "123 Rue Paris", category: "french")
    expect(restaurant).to be_valid
  end

  it "is invalid without a restaurant name" do
    restaurant = Restaurant.new(address: "123 Rue Paris", category: "french")
    expect(restaurant).not_to be_valid
  end

  it "is invalid with an unsupported category" do
    restaurant = Restaurant.new(name: "Mystery Food", address: "456 Nowhere Ave", category: "martian")
    expect(restaurant).not_to be_valid
  end
end
