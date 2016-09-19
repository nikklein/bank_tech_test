require 'account.rb'

describe Account do
  describe '#balance' do
     it {is_expected.to respond_to(:balance)}
     it' initially has no funds availible' do
       expect(subject.balance).to eq(0)
     end
  end
end
