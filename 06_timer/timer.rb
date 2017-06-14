class Timer

	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def padded(num)
		if num < 10
			"0" + num.to_s
		else 
			num.to_s
		end
	end

	def time_string
		hours = (@seconds / (60*60))
		minutes = ((@seconds % (60*60)) / 60)
		seconds = (@seconds % 60)
		padded(hours) + ':' + padded(minutes) + ':' + padded(seconds)
	end

end