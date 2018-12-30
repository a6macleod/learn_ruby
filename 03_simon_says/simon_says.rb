#write your code here
def echo(rep)
	rep
end

def shout(a)
	a.upcase	
end

def repeat(b, c = 2)
	("#{b} " * c).strip
end

def start_of_word(word, num)
	if num == 1
		word[num - 1]		
	
	else word[0 .. num - 1]
	end
end

def first_word(sentance)
	sentance.split.first
end

def titleize(a)
	little_words = ['and', 'or', 'over', 'the']
	array = a.split(' ')
	array[0].capitalize!
	array.map do |i|
		little_words.include?(i) ? i : i.capitalize!
	end
	array.join(' ')
end
