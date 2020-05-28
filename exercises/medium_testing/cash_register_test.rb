require 'minitest/autorun'

require_relative 'cash_register_class'
require_relative 'transaction_class'

class CashRegisterTest < MiniTest::Test

  def setup
    @register = CashRegister.new(100)    
    @transaction = Transaction.new(50)
  end
  
  def test_accept_money
    @transaction.amount_paid = 50

    assert_equal(150, @register.accept_money(@transaction))
  end
  
  def test_change
    @transaction.amount_paid = 60

    assert_equal(10, @register.change(@transaction))
  end

  def test_give_receipt
    assert_output("You've paid $50.\n") do
      @register.give_receipt(@transaction)
    end
  end

  def test_prompt_for_payment
        
  end
end
