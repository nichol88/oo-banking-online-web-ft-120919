class Transfer
  # your code here

  def initialize(from, to, amt)
    @sender = from
    
    from.balance -= amt
    to.balance += amt
  end
end
