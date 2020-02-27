require_relative 'book'  
class Member
        attr_accessor:name,:m_id,:b_id
       def initialize
               puts "insert member name"
               @name=gets.chomp
                puts "insert member id"
                @m_id=gets.chomp.to_i
		puts"=========================================="
                puts" insert the book id wich u want to borrow "
                puts "========================================="
		Book.display_book_list
		@b_id=gets.chomp.to_i
      
       end     
end
