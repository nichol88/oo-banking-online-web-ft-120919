class Transfer
  # your code here
  attr attr_accessor :status
  attr_reader :sender, :receiver
  def initialize(from, to, amt)
    @sender = from
    @receiver = to
    @status = "pending"
    from.balance -= amt
    to.balance += amt

  end
end
