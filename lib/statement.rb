class Statement

  def initialize
    @list_of_transaction = []
  end

  def add_transaction(transaction)
    @list_of_transaction << transaction
  end

  def list_of_transaction
    @list_of_transaction
  end

end
