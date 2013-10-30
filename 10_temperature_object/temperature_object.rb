class Temperature
	def initialize(options = {})
		@options = options
	end
	
	def to_fahrenheit
		if @options[:c]
			@options[:c] * 9/5 + 32
		else
			@options[:f]
		end
	end

	def to_celsius
		if 	@options[:f]
			(@options[:f] - 32) * 5/9
		else
			@options[:c]
		end
	end

	def self.in_celsius(x)
		Temperature.new({:c => x})
	end

	def self.in_fahrenheit(x)
		Temperature.new({:f => x}) 	
	end

end

class Celsius < Temperature
	def initialize(temp)
		@temp = temp
	end

	def to_celsius
		@temp
	end

	def to_fahrenheit
		@temp * 9/5 + 32
	end
end

class Fahrenheit < Temperature
	def initialize(temp)
		@temp = temp
	end

	def to_fahrenheit
		@temp
	end

	def to_celsius
		(@temp - 32) * 5/9
	end
end
