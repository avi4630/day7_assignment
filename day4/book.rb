class Book
	@@book_list={}
	attr_accessor:name,:author_name,:b_id,:status,:no_copies,:available_copies
       def initialize 
	       puts "insert book name"
	       @name=gets.chomp
	       puts "insert author name"
               @author_name=gets.chomp
	        puts "insert book id"
		@b_id=gets.chomp.to_i 
               @status="available"
	       puts "enter no of copies"
	      @available_copies= @no_copies=gets.chomp.to_i
	       
       end

       def to_s
	       puts "  book id        :" +@b_id.to_s
	       puts "  name           :" +@name
	       puts "  author name    :" +@author_name
	       puts "  status         :" +@status
	       puts "  total copies   :" +@no_copies.to_s
	       puts "  available copis:" +@available_copies.to_s
       end

       def self.display_book_list
	       @@book_list.each do |key,obj|
              puts obj
               end
        end

       def self.book_list book_list
	       @@book_list=book_list
       end

     

end
