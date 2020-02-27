require_relative 'member'  
require_relative 'book'  

class Library

	      def initialize 
		@book_list={}
		@borrow_list={}
              end
       def add_books
	     
	  i="y"
        while i=="y" do
         book=Book.new
         @book_list[book.b_id]=book
         puts "you want add more book: y/n"
         i=gets.chomp
        end
      Book.book_list @book_list
     end
  
      def display_book_list
        @book_list.each do |key,obj|
        puts obj
        end
      end

      def borrow_book
         member=Member.new
	 @borrow_list[member.m_id]=member.b_id
	book= @book_list[member.b_id]
	book.available_copies-=1
	@book_list[member.b_id]=book

      end

      def display_borrow_list
	   puts "==========================="
           puts " member id  :   book id    "
	   puts "==========================="
          @borrow_list.each do |m_id,b_id|
          puts  "#{m_id}      :       #{b_id}"
	  end
	  puts "============================"
      end


end

lab=Library.new
lab.add_books
lab.display_book_list
lab.borrow_book
lab.display_borrow_list
lab.display_book_list
