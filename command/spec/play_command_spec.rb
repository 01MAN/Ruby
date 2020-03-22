require_relative '../cat.rb'
require_relative '../play_command.rb'
require 'rspec'

describe PlayCommand do
  describe '#execute' do
    subject { PlayCommand.new(cat).execute }

    context 'when cat init 0 0 0' do
      let(:cat) { Cat.new(0, 0, 0) }
      it do
        subject
        expect(cat.fullness).to eq(-1)
        expect(cat.tiredness).to eq(10)
        expect(cat.happiness).to eq(10)
      end
    end

    context 'when cat init -100 -100 -100' do
      let(:cat) { Cat.new(-100, -100, -100) }
      it do
        subject
        expect(cat.fullness).to eq(-101)
        expect(cat.tiredness).to eq(-90)
        expect(cat.happiness).to eq(-90)
      end
    end

    context 'when cat init 100 100 100' do
      let(:cat) { Cat.new(100, 100, 100) }
      it do
        subject
        expect(cat.fullness).to eq(99)
        expect(cat.tiredness).to eq(110)
        expect(cat.happiness).to eq(110)
      end
    end
  end
end
