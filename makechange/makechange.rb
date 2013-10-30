class Changer
	attr_accessor :num
	QUARTER = 25
	DIME = 10
	NICKEL = 5
	PENNY = 1
	# q = x/QUARTER
	# d = (x % QUARTER)/DIME
	# n = ((x % QUARTER) % DIME)/NICKEL
	# p = ((x % QUARTER) % DIME) % NICKEL/PENNY
	
	# def initialize(num)
	# 	@num = num
	# end

	@@array = []

	def make_change(num)
		q = num/QUARTER
		d = (num % QUARTER)/DIME
		n = ((num % QUARTER) % DIME)/NICKEL
		p = ((num % QUARTER) % DIME) % NICKEL/PENNY
		q.times {|x| @@array.push(QUARTER)}
		d.times {|x| @@array.push(DIME)}
		n.times {|x| @@array.push(NICKEL)}
		p.times {|x| @@array.push(PENNY)}
		puts @@array
	end

end

changer = Changer.new
changer.make_change(134)