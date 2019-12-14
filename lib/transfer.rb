class Transfer
  # your code here
  def initialize(from, to, amt)
    from.balance -= amt
    to.balance += amt
  end
end
