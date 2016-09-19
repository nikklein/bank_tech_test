require './lib/statement.rb'

class Account
  def initialize
    @balance = 0
    @statement = Statement.new
  end
  def balance
    @balance
  end
  def deposit(amount, date = Time.now)
    @balance += amount
    create_transaction(date_converter(date), nil, amount)
  end

  def withdraw(amount, date = Time.now)
    raise 'You have insufficient funds in your account' if amount > @balance
    @balance -= amount
    create_transaction(date_converter(date), amount, nil)
  end

  def print_statement
    @statement.print_transactions
  end

  private

    def create_transaction(date, credit = nil, debit = nil)
      @transaction = {date: date, credit: credit, debit: debit, balance: @balance}
      add_to_statement
    end

    def add_to_statement
      @statement.add_transaction(@transaction)
    end

    def date_converter date
      date.strftime("%d/%B/%Y")
    end

end
