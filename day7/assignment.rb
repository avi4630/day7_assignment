class Bank
@IFSC_code="SBIN12842"
@Bank_name="State Bank India"
@Branch="Pune"
@@acounts={}
def self.add_account
    obj=Account.new
    @@acounts[obj.accountNo]=obj
end

def self.deposit
    puts "pls enter your account no"
    account_no=gets.chomp.to_i
    if @@acounts[account_no]
        puts "insert amount"
        balance=gets.chomp.to_i
        obj=@@acounts[account_no]
        obj.balance=obj.balance + balance
        @@acounts[account_no]=obj
    else
        puts "incorrect acount no"
    end
end

def self.withdraw
    puts "pls enter your account no"
    account_no=gets.chomp.to_i
    if @@acounts[account_no]
        puts "insert amount"
        balance=gets.chomp.to_i
        obj=@@acounts[account_no]
        obj.balance=obj.balance - balance
        @@acounts[account_no]=obj
    else
        puts "incorrect acount no"
    end
end

def self.show_details
    puts "pls enter your account no"
    account_no=gets.chomp.to_i
    if @@acounts[account_no]
        obj=@@acounts[account_no]
        obj.to_s
    else
        puts "incorrect acount no"
    end
end

    def self.bank_info
    puts "IFSC_code : #{@IFSC_code}" 
    puts "Bank_name : #{@Bank_name}"
    puts "Branch    :  #{@Branch}"
    end

    def self.all_acount
        @@acounts.each do |key,value|
        value.to_s
        end
    end
end
class Account < Bank
    attr_accessor:balance
    attr_reader:accountNo
    
    def initialize
        @balance=0
        puts "insert your name"
        @name=gets.chomp
        puts "insert DOB"
        @dob=gets.chomp
        @accountNo=rand(10000..99999)
        puts "pls select acount type"
        puts "1.saving    2.current"
        type=gets.chomp.to_i
        @type=type==1?"saving" : "current"
        puts "==================================="
        puts "your account is created sucusefully"
        puts "your account no is: #{@accountNo} "
        puts "===================================" 
        
    end

    def to_s
      puts "--------------------------"
      Bank.bank_info
      puts "acount no : #{@accountNo}"
      puts "dob       : #{@dob}"
      puts "type      : #{@type}"
      puts "balane    : #{@balance}"
      puts "---------------------------"
    end
         
end

y=0
while y!=5
    puts "#####################"
    puts "1.create new account"
    puts "2.deposit"
    puts "3.withdraw"
    puts "4.show acounts details"
    puts "5.All acounts"
    puts "6.exit"
    y=gets.chomp.to_i
   case y
   when 1
       Bank.add_account
   when 2
       Bank.deposit
   when 3
       Bank.withdraw
   when 4
       Bank.show_details
   when 5
      Bank.all_acount
   else
    exit
   end

end