class PrintStatement

  def initialize(list_of_transaction)
    @list_of_transaction = list_of_transaction
  end

  def print
    $stdout.puts "Date || Credit || Debit || Balance"
    $stdout.puts @list_of_transaction.map{|el| el.map{|k,v| "#{el[k]}"}.join(" ||")}
  end
  
end
