require 'print_statement.rb'

describe PrintStatement do

  let (:statement) {([{date: "19/09/2016", credit: nil, debit: 100, balance: 100}])}

  subject {described_class.new(statement)}

  describe '#print' do
    it 'displays statement in command line' do
      expect { subject.print }.to output("Date || Credit || Debit || Balance\n19/09/2016 || ||100 ||100\n").to_stdout
    end

end
end
