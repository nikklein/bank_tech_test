require_relative 'controller'

class Menu

  def initialize
    @controller = Controller.new
    user_menu
  end

  def user_menu
    loop do
      print_choices
      choice = gets.chomp.downcase
      if choice == 'deposit'
        ask_value
        value = gets.chomp.to_i
        @controller.deposit(value, Time.now)
      elsif choice == 'withdraw'
        ask_value
        value = gets.chomp.to_i
        @controller.withdraw(value, Time.now)
      elsif choice == 'print statement'
        @controller.print_statement
      elsif choice == 'exit'
        exit
      end
    end
  end

  def print_choices
    puts "Please choose one from the following: deposit, withdraw or print statement"
  end

  def ask_value
    puts "Please enter the amount"
  end

end
