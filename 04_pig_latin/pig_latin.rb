#write your code here

def translate(sentence)
	words = sentence.split()
	words.each_with_index do |word, index|
		if (is_vowel(word[0]))
			words[index] = vowel_case(word)
		else # at least one consonant
			words[index] = consonant_case(word)
		end
	end
	words.join(' ')
end

def is_vowel(letter)
	letter.downcase == 'a' or letter.downcase == 'e' or letter.downcase == 'i' or letter.downcase == 'o' or letter.downcase == 'u'
end

def vowel_case(word)
	word + "ay"
end

def consonant_case(word)
	end_cut = 1
	vowel_found = false
	while !vowel_found do
		if (is_vowel(word[end_cut]))
			if (word[end_cut].downcase == 'u')
				if (word[end_cut-1].downcase == 'q')
					end_cut+= 1
					vowel_found = true
				end
			end
			vowel_found = true
		else
			end_cut+= 1
		end
	end
	word[end_cut..-1] + word[0..end_cut-1] + "ay"
end