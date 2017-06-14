#write your code here

# takes one word (string) and says it back
def echo(word)
	word
end

# takes one string and converts it to uppercase
def shout(word)
	word.upcase!
end

# variable arguments
# can take one word and repeat it once
# can also take a word and a number: repeat the word number times
def repeat(word, times=2)
	repetitions = []
	for i in 1..times
		repetitions.push(word)
	end
	repetitions.join(' ')
end

# take a word and return the first num_chars letters of it
def start_of_word(word, num_chars)
	word[0..num_chars-1]
end

# take a sentence and return the first word in it
def first_word(sentence)
	sentence.split()[0]
end

# takes a string and capitalizes every word in it (except little words (unless they appear as the first word))
# I'm going to define a 'little word' as: [the, and, over, or, a, an, with, of, by]
def titleize(sentence)
	words = sentence.split()
	words[0].capitalize!
	words.each do |word|
		if (word != 'the' and word != 'and' and word != 'over' and word != 'or' and word != 'a' and word != 'an' and word != 'with' and word != 'of' and word != 'by')
			word.capitalize!
		end
	end
	words.join(' ')
end