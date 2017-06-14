class Book

	attr_accessor :title

	def title=(value)
		words = value.split()
		words.each_with_index do |word, index|
			if(index == 0)
				words[index] = word.capitalize
			else
				case word.downcase
				when "the"
				when "a"
				when "an"
				when "and"
				when "in"
				when "of"
					words[index] = word
				else
					words[index] = word.capitalize
				end
			end
		end
		@title = words.join(' ')
	end

end
