require 'account.rb'

describe Account do
  TEST_AMOUNT = 100
  describe '#balance' do
     it {is_expected.to respond_to(:balance)}
     it 'initially has no funds' do
       expect(subject.balance).to eq(0)
     end
  end
  describe '#deposit' do
    it {is_expected.to respond_to(:deposit).with(1).argument}
    it 'adds given amount of money on account' do
      subject.deposit(TEST_AMOUNT)
      expect(subject.balance).to eq(TEST_AMOUNT)
    end
  end
end
