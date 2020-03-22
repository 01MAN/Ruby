require_relative '../cat.rb'
require_relative '../sleep_command.rb'
require 'rspec'

describe SleepCommand do
  describe '#execute' do
    subject { SleepCommand.new(cat).execute }

    context 'when cat init 0 0 0' do
      let(:cat) { Cat.new(0, 0, 0) }
      it do
        subject
        expect(cat.fullness).to eq(-10)
        expect(cat.tiredness).to eq(-20)
        expect(cat.happiness).to eq(10)
      end
    end

    context 'when cat init -100 -100 -100' do
      let(:cat) { Cat.new(-100, -100, -100) }
      it do
        subject
        expect(cat.fullness).to eq(-110)
        expect(cat.tiredness).to eq(-120)
        expect(cat.happiness).to eq(-90)
      end
    end

    context 'when cat init 100 100 100' do
      let(:cat) { Cat.new(100, 100, 100) }
      it do
        subject
        expect(cat.fullness).to eq(90)
        expect(cat.tiredness).to eq(80)
        expect(cat.happiness).to eq(110)
      end
    end
  end
end
