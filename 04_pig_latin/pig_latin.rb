#write your code here
def translate (str)
	vowels = ['a', 'e', 'i', 'o', 'u']
	arr_string = []
	str.split.each do |word|
		
		#start with a vowel
		if vowels.include?(word[0])
			word += 'ay'
		
		#'qu' exception2
		elsif word[1..2].include?('qu')
		constant = word[0..2]
		word[0..2] = ''
		word += "#{constant}ay"	

		#start with three consonants
		elsif !vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2])
			constant = word[0..2]
			word[0..2] = ''
			word += "#{constant}ay"

		#start with two consonants
		elsif !vowels.include?(word[0]) && !vowels.include?(word[1])
			constant = word[0..1]
			word[0..1] = ''
			word += "#{constant}ay"

		#"qu" exception1
		elsif word[0..1] == 'qu'
		qu_phenome = 'quay'
		word[0..1] = ''
		word += qu_phenome
		

		#start with one consonant
		elsif !vowels.include?(word[0])
			constant = word[0]
			word[0] = ''
			word += "#{constant}ay"

		end
		arr_string << word
	end
	arr_string.join(" ")
end
