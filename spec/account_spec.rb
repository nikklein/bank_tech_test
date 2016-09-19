require 'account'

describe Account do

  TEST_AMOUNT = 100
  subject {described_class.new}

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
  describe '#withdraw' do
    it {is_expected.to respond_to(:withdraw).with(1).argument}
    it 'raises an error if account has insufficient funds to withdraw given amount' do
      expect{subject.withdraw(TEST_AMOUNT)}.to raise_error 'You have insufficient funds in your account'
    end
    it 'deducts correct amount of money' do
      subject.deposit(TEST_AMOUNT)
      subject.withdraw(TEST_AMOUNT)
      expect(subject.balance).to eq(0)
    end
  end
end
