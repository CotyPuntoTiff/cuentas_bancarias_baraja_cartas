class User
end
class BankAccount
    attr_accessor :account_balance

    def initialize(banck_name, number_account, account_balance = 0)
      @banck_name = banck_name 
      @number_account = number_account
      @account_balance = account_balance
    end

    def transfer(money , destiny_account)
        @account_balance = @account_balance - money
        destiny_account.account_balance = destiny_account.account_balance + money
    end
end

cuenta1 = BankAccount.new('banco1', 26547896, 5000)
cuenta2 = BankAccount.new('banco2', 97436521, 5000)
cuenta1.transfer(5000, cuenta2)

puts cuenta1.account_balance
puts cuenta2.account_balance