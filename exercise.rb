class BankAccount

@@interest_rate = 0.4
@@accounts = []

  def initialize
    @balance = 0
  end

  def balance
    @balance
  end

  def balance=(balance)
    @balance = balance
  end

  def deposit(deposit)
    @balance += deposit
    return @balance
  end

  def withdraw(draw)
    @balance -= draw
    return @balance
  end

  def self.create
    account = BankAccount.new
      @@accounts << account
    return account
  end

  def self.total_funds
    total_funds = 0
      @@accounts.each do |account|
        total_funds += account.balance
      end
    return total_funds
  end

  def self.interest_time
    interest = 0
      @@accounts.each do |account|
        account.balance *= (1+ @@interest_rate)
      end
  end

end



p steven = BankAccount.create
p kerry = BankAccount.create
p steven.balance
p kerry.balance
p steven.deposit(500)
p kerry.deposit(1000)
p steven.balance
p kerry.balance
p steven.withdraw(139)
p kerry.withdraw(379)
