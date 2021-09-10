RSpec.describe 'satrt_with and end_with matchers' do

  describe 'caterpillar' do
    it 'should check for substring at the begining or end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('pillar')
      expect(subject).not_to start_with('Cat')
    end

    it { is_expected.to start_with('cat')}
    it { is_expected.to end_with('pillar')}
  end


  describe [:a, :b, :c, :d] do
    it 'should check for elements at begining or end of the array' do
      expect(subject).to start_with(:a)
      expect(subject).to start_with(:a, :b)
      expect(subject).to start_with(:a, :b, :c)
      expect(subject).to end_with(:d)
    end

    it{ is_expected.to start_with(:a, :b)}
    it{ is_expected.to end_with(:c, :d)}
  end
end
