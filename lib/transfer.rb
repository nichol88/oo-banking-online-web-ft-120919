class Transfer
  # your code here
  attr_reader :sender
  def initialize(from, to, amt)
    @sender = from

    from.balance -= amt
    to.balance += amt
  end
end
