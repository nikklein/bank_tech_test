require_relative 'account'
require_relative 'print_statement'

class Controller

  def initialize
    @account = Account.new
    @statement = Statement.new
  end

  def deposit(value, date)
    @account.deposit(value, date)
    add_to_statement
  end

  def withdraw(value, date)
    @account.withdraw(value, date)
    add_to_statement
  end

  def print_statement
      printer.print
  end

  def printer
    @printer ||= PrintStatement.new(@statement.list_of_transaction)
  end

  def add_to_statement
    @statement.add_transaction(@account.retrieve_transaction.show_transaction)
  end

end
