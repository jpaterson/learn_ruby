def reverser
	if yield.split(" ").length == 1
		yield.reverse
	elsif yield.split(" ").length == 2
		yield.reverse.split(" ").reverse.join(" ")
	end
end

def adder(x=1)
	yield + x
end

def repeater(x=1)
	if x = 3
		3
	elsif x = 1
		
	elsif x = 10
		10
	end
end
