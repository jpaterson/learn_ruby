class Array
	def sum
		total = 0
	self.each { |x| total += x}
	total
	end

	def square
		self.map { |x| i ** 2 }
	end
	
	def square!
		self.map! { |x| i ** 2 }
	end

end