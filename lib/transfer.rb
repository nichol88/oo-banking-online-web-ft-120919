class Transfer
  # your code here
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
  def initialize(from, to, amt)
    @sender = from
    @receiver = to
    @status = "pending"
    @amount = amt
    from.balance -= amt
    to.balance += amt
  end

  def valid?(act1, act2)
    true if account.status == "open"
  end
end
