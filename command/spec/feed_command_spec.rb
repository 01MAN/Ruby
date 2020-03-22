require_relative '../cat.rb'
require_relative '../feed_command.rb'
require 'rspec'

describe FeedCommand do
  describe '#execute' do
    subject { FeedCommand.new(cat).execute }

    context 'when cat init 0 0 0' do
      let(:cat) { Cat.new(0, 0, 0) }
      it do
        subject
        expect(cat.fullness).to eq(10)
        expect(cat.tiredness).to eq(2)
        expect(cat.happiness).to eq(20)
      end
    end

    context 'when cat init -100 -100 -100' do
      let(:cat) { Cat.new(-100, -100, -100) }
      it do
        subject
        expect(cat.fullness).to eq(-90)
        expect(cat.tiredness).to eq(-98)
        expect(cat.happiness).to eq(-80)
      end
    end

    context 'when cat init 100 100 100' do
      let(:cat) { Cat.new(100, 100, 100) }
      it do
        subject
        expect(cat.fullness).to eq(110)
        expect(cat.tiredness).to eq(102)
        expect(cat.happiness).to eq(120)
      end
    end
  end
end
