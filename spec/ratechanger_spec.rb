require "spec_helper"

RSpec.describe Ratechanger do
  it "has a version number" do
    expect(Ratechanger::VERSION).not_to be nil
  end

  it "must calculate rating for winner" do
    result = Ratechanger::Core.new(winner: 2000, looser: 1500, koef: 10)
    expect(result.calculate_rating_for_winner).not_to be nil
    expect(result.calculate_rating_for_winner).not_to eq(2000)
    expect(result.calculate_rating_for_winner).to be > 2000
    expect(result.calculate_rating_for_winner).to eq(2000.532)

  end

  it "must calculate rating for looser" do
    result = Ratechanger::Core.new(winner: 2000, looser: 1500, koef: 10)
    expect(result.calculate_rating_for_looser).not_to be nil
    expect(result.calculate_rating_for_looser).not_to eq(1500)
    expect(result.calculate_rating_for_looser).to be < 1500
    expect(result.calculate_rating_for_looser).to eq(1499.468)
  end
end
