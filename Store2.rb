require_relative "Store1.rb"
class Store2
	extend Operation
	item1={name:"tomato",quantity:"30kg",price:"300"}
 	item1.each do |key,value|
 	puts"#{key} : #{value}"
	 end
 	item2={name:"onion",quantity:"20kg",price:"1000"}
  	item2.each do|key,value|
  	puts"#{key} :#{value}"
  	end
  	$item.push(item1,item2)
  	puts "#{$item}"
  	 def self.show
	    	puts"Enter your choice 1.Add 2.List of items 3.delete 4.purchase an item"
	        choice=gets.chomp 
	        case choice
	        when "1"
                add
	    		show
	    	when "2"
	    		list
	    		show
	    	when "3"
	    		delete
	    		show
	    	when "4"
	    		purchase
	    		show
	    	else 
	    		puts" wrong choice"
	    	end
	    end
end
Store2.show
#store2=Store2.new
#store2.extend Operation
