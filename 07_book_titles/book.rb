class Book
	attr_accessor :title
	def title
		@title = title
	end

	def title
		if @title.split(" ").length < 4 then
		@title.split(" ").each {|x| print x.capitalize! }.join(" ")
		else

		end
	end
end