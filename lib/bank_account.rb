class BankAccount

    attr_accessor :balance, :status
    attr_reader :name

    def initialize(name)
        @name = name
        @balance = 1000
        @status = 'open'
    end

    def deposit(amount)
        self.balance += amount
    end

    def display_balance
        "Your balance is $#{self.balance.dup.freeze}."
    end

    def valid?
        self.balance > 0 && self.status == "open" ? true : false   
    end

    def close_account
        self.status = 'closed'
    end

end
