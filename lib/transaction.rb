class Transaction

    def add(date, credit=nil, debit=nil, balance)
      @transaction = {date: date, credit: credit, debit: debit, balance: balance}
    end

    def show_transaction
      @transaction
    end

end
