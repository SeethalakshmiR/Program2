$item=[]
module Operation
      def add 
	  	   puts "Which item you want to add"
	       itemname=gets.chomp
		   puts "Quantity of an item"
		   quantity=gets.chomp
		   puts "Price of an Item"
		   price=gets.chomp
	       $item.push(name:"#{itemname}",quantity:"#{quantity}",price:"#{price}")
	       puts "#{$item}"
	    end
	  def list
	       $item.each do |value|
	       puts "#{value}"
	       end
	    end
	  def delete
	    	puts "which item you want to delete"
	    	delete_item=gets.chomp
	    	$item.delete_if{|h| h[:name]=="#{delete_item}"}
	    	puts "#{$item}"
	    end
	  def purchase
	        puts "Which item you want to purchase"
	    	purchase_item=gets.chomp
	    	puts "Quantity of an item u want to buy "
	    	quantity_item=gets.to_i
	    	b=$item.find {|x| x[:name]=="#{purchase_item}"}
	    	puts "#{b}"
	    	 t_quantity=b[:quantity].to_i
	    	 t_price=b[:price].to_i
	    	 p=t_price/t_quantity
	    	puts "The price of on #{purchase_item} for 1 kg #{p}"
	    	purchased_itemprice="#{quantity_item*p}".to_i
	    	puts "The price of purchased  #{purchase_item} is #{purchased_itemprice} "
	    	 remaining_item= "#{t_quantity- quantity_item}"
	    	puts"The remaining #{purchase_item} in a shop is  #{remaining_item} kg"
	    	 remaining_price="#{t_price-purchased_itemprice}"
	    	puts "The price of an remaining #{purchase_item} in a shop is #{remaining_price}"
	    end
	   
	end 