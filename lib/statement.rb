class Statement

  def initialize
    @list_of_transaction = []
  end

  def add_transaction(transaction)
    @list_of_transaction << transaction
  end

  def print_transactions
    $stdout.puts "Date || Credit || Debit || Balance"
    $stdout.puts @list_of_transaction.map{|el| el.map{|k,v| "#{el[k]}"}.join(" ||")}
  end
end
