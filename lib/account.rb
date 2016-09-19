require_relative 'statement.rb'
require_relative 'transaction.rb'

class Account

  def initialize
    @balance = 0
    @transaction = Transaction.new
  end

  def show_balance
    @balance
  end

  def deposit(amount, date = Time.now)
    @balance += amount
    @transaction.add(date_converter(date), nil, amount, @balance)
  end

  def withdraw(amount, date = Time.now)
    raise 'You have insufficient funds in your account' if amount > @balance
    @balance -= amount
    @transaction.add(date_converter(date), amount, nil, @balance)
  end

  def retrieve_transaction
    @transaction
  end

  private

    def date_converter date
      date.strftime("%d/%B/%Y")
    end

end
