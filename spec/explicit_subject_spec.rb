RSpec.describe Hash do
  subject(:bob) do 
   { a: 1, b: 2} 
  end

  it 'has key-value pairs' do
    expect(subject.length).to eq(2)
    expect(bob.length).to eq(2)    
  end

  describe 'nextex example' do
    it 'has tow key-value pairs' do
      expect(subject.length).to eq(2)
      expect(bob.length).to eq(2)
    end
  end
end