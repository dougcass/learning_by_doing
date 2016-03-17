require 'rspec'
require_relative '../../lib/cash_register'

describe CashRegister do
  it 'should be a Cash register' do
    expect(subject).to be_a(CashRegister)
  end

  describe '#total' do
    it 'should return 0 for new CashRegister' do
      expect(subject.total).to eq(0)
    end
  end
  describe '#purchase(amount)' do
    it 'should add the purchase amount to the total' do
      subject.purchase(3.00)
      expect(subject.total).to eq(3.00)
    end
  end
  describe '#payment(amount)' do
    it 'should subtract the payment amount from the total' do
      subject.payment(3.00)
      expect(subject.total).to eq(-3)
    end

    context 'if payment amount > than total amount' do
      it 'should return a string that indicates the amount of change' do
        subject.purchase(3.00)
        expect(subject.payment(5.00)).to eq('Your change is $2.00')
      end
    end
  end
end
