class CashRegister
  def initialize(discount=nil)
    @discount = discount
    @total = 0
  end
  
  def discount
    @discount
  end
  
  def total
    @total
  end
  
  def total=(num)
    @total = num
  end
  
  def add_item(title, price, quantity=nil)
    if quantity
      @total += price * quantity
    else
      @total += price
    end
  end
  
  def apply_discount
    if @discount
      @total = @total - (@total * @discount / 100)
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end
  
end
