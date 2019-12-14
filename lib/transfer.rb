class Transfer
  # your code here
  attr_accessor :status, :last_trans
  attr_reader :sender, :receiver, :amount
  def initialize(from, to, amt)
    @sender = from
    @receiver = to
    @status = "pending"
    @amount = amt

  end

  def valid?
    return false if @sender.balance < @amount # || @receiver.balance < @amount
    return true if @sender.valid? && @receiver.valid? && @status == "pending"
    false
  end

  def execute_transaction
    if self.valid?
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
      @last_trans = [@sender, @receiver, @balance]
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end
end
