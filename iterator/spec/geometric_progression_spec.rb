require_relative '../geometric_progression.rb'
require 'rspec'

describe GeometricProgression do
  describe '#each' do
    let(:max_iter) { 5 }
    let(:a) { 1 }
    let(:denominator) { 2 }

    subject do
      GeometricProgression.new(
        max_iteration: max_iter,
        a: a,
        denominator: denominator
      ).each { |n| n }
    end

    context 'when first element eq 0' do
      let(:a) { 0 }

      it { expect(subject).to eq(Array.new(5, 0)) }
    end

    context 'when denomanator eq 1' do
      let(:denominator) { 1 }

      it { expect(subject).to eq(Array.new(5, 1)) }
    end

    context 'when first element eq 5 and denominator eq 2' do
      let(:a) { 5 }
      let(:denominator) { 2 }
      arr = [10, 20, 40, 80, 160]

      it { expect(subject).to eq(arr) }
    end
  end
end
