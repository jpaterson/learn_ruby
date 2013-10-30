def echo(greeting)
	greeting
end

def shout(message)
	message.upcase
end

def repeat(phrase, n=2)
	("#{phrase} "*n.to_i).rstrip
end

def start_of_word(word, n=1)
	word[0,n]
end

def first_word(word)
	word.split(" ").first
end

# def titleize(word)
# 	word.map do |x|
# 	if x.length > 4 then
# 	x.capitalize).join(" ")
# 	else
# 	x
# 	end
# end