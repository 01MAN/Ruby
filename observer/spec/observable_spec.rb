require_relative '../observable.rb'
require_relative '../university.rb'
require_relative '../observers.rb'
require 'rspec'

describe Observable do
  describe '#add_observer' do
    subject { University.new.add_observer MinistryEducation.new }

    it { expect(subject.first.class).to eq(MinistryEducation) }
  end

  describe '#delete_observer' do
    let(:university) { University.new }
    let(:ministry) { MinistryScience.new }

    subject do
      university.add_observer MinistryEducation.new
      university.add_observer ministry
      university.delete_observer ministry
    end

    it do
      subject
      expect(university.observers.size).to eq(1)
    end
  end
end
