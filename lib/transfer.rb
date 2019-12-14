class Transfer
  # your code here
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
  def initialize(from, to, amt)
    @sender = from
    @receiver = to
    @status = "pending"
    @amount = amt

  end

  def valid?
    return true if @sender.valid? && @receiver.valid? && @status != "complete"
    false
  end

  def execute_transaction
    if self.valid?
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    end
  end
end
