def change(cents)
	coins = {
		:quarter => 25, 
		:dime => 10,
		:nickel => 5,
		:penny => 1
	}
	if cents.class != Integer
		return "Enter only Integers."
	end

	change = {}
	coins.each do |coin, value|
		if (cents / value) >= 1
			change[coin] = cents / value
			cents %= value
		end	
	end
	return change
end
