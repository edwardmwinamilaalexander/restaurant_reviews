require 'rails_helper'


RSpec.describe Review, type: :model do
  let(:restaurant) { Restaurant.create(name: "Sushi Japan", address: "456 Tokyo Dr", category: "japanese", phone_number: "123-456-7890") }

  it "is valid with valid content and integer rating" do
    review = Review.new(content: "Amazing!", rating: 5, restaurant: restaurant)
    expect(review).to be_valid
  end

  it "is invalid without content" do
    review = Review.new(content: nil, rating: 4, restaurant: restaurant)
    expect(review).not_to be_valid
  end

  it "is invalid with a rating over 5" do
    review = Review.new(content: "Too good", rating: 10, restaurant: restaurant)
    expect(review).not_to be_valid
  end

  it "is invalid with a decimal rating" do
    review = Review.new(content: "Okay", rating: 2.5, restaurant: restaurant)
    expect(review).not_to be_valid
  end
end
