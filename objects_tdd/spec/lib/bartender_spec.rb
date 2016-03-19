require 'rspec'
require_relative '../../lib/bartender'

describe Bartender do
  it 'should be a Bartender' do
    expect(subject).to be_a(Bartender)
  end

  describe '#start' do
    it 'should start a count' do
      expect(subject.start).to eq(0)
    end
  end

  describe '#hello' do
    it 'should say hello' do
      expect(subject.hello).to eq('Hi. What would you like to drink?')
    end
  end

  describe '#pour' do
    it 'should pour a drink' do
      subject.start
      expect(subject.pour).to eq(1)
    end

    context 'if count = 6' do
      it 'it should say that your are cutoff' do
        subject.start
        subject.pour
        subject.pour
        subject.pour
        subject.pour
        subject.pour
        subject.pour
        expect(subject.pour).to eq('Sorry. No more for you today.')
      end
    end
  end
end
