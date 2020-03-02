module Property
   module A
   def address base
	puts "insert your property location"
	base.address=gets.chomp
   end
   module_function :address


   def area base
	puts "insert your area in sqrft"
	base.area=gets.chomp
   end
   module_function :area

   def rent base
	puts "insert your property rent or price"
		base.rent=gets.chomp
   end
   module_function :rent

end
module B
   def document base
	puts "insert your PAN number"
	base.document=gets.chomp
   end
   module_function :document

end
  
 def displaylist list
	puts "============================"
	list.each do |item|
		puts item
	end
	puts "============================"
end
module_function :displaylist

end

class Rent_property
  attr_accessor:address
  attr_accessor:area
  attr_accessor:rent
  attr_accessor:deposite

  def initialize
	Property::A.address self
	Property::A.area self
	Property::A.rent self
	Rent_property.deposite self

  end

  def to_s
	puts "address       : #{@address}"
	puts "area          : #{@area}"
	puts "rent/month    : #{@rent}"
	puts "deposite      : #{@deposite}"
  end	

  def self.deposite base
	puts "insert deposite value"
	base.deposite=gets.chomp
   end
end
class Sale_property

	attr_accessor:address
	attr_accessor:area
	attr_accessor:rent
	attr_accessor:document

	def initialize
		Property::A.address self
		Property::A.area self
		Property::A.rent self
		Property::B.document self

	end
	 
	def to_s
		puts "address       : #{@address}"
		puts "area          : #{@area}"
		puts "price         : #{@rent}"
		puts "document      : #{document}"
	  end

	  
end

class Add_hotel
	
	attr_accessor:address
	attr_accessor:rooms
	attr_accessor:rent
	attr_accessor:document

	def initialize
		Property::A.address self
		Property::A.rent self
		Property::B.document self
		Add_hotel.rooms self

	end

	def to_s
		puts "address       : #{@address}"
		puts "area          : #{@rooms}"
		puts "rent/day      : #{@rent}"
		puts "document      : #{@document}"
	  end
	  def self.rooms base
		puts "insert available rooms"
		base.rooms=gets.chomp
	   end

end

puts "======================"
puts "  property services"
puts "======================"
y=0
hotels=[]
sales=[]
rents=[]
while y!=7
	puts "1 : Add  :hotel         4 : hotel list"
	puts "2 : sale :property      5 : sale property list"
	puts "3 : rent :property      6 : rent properrty list"
	puts "7 : Exit"
  
	 y=gets.chomp.to_i
	 case y
	 when 1 
		  hotels.push Add_hotel.new
	 
	 when 2
		  sales.push Sale_property.new
	 
	 when 3
		rents.push Rent_property.new
	 
	 when 4
		Property.displaylist hotels
	 
	when 5
		Property.displaylist sales
	
	when 6
		Property.displaylist rents
	else
		Exit
		end
end



