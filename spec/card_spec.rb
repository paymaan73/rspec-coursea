class Card
  attr_accessor :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  let(:card) { Card.new('Ace', 'Spades')}
  # let(:x) { 1 + 1 }
  # let(:y) { x + 10 }
  it 'has a rank and that rank can change' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a custom error message' do
    comparison = 'Spade'
    expect(card.suit).to eq(comparison), "Hey, I expected #{card.suit} but I got #{comparison} instead."
  end

end
