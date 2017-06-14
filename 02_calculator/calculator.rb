#write your code here

def add(a,b)
	a + b
end

def subtract(a,b)
	a - b
end

def sum(nums)
	sum = 0
	nums.each do |num|
		sum += num
	end
	sum
end

def multiply(*args)
	value = 1
	args.each do |arg|
		value *= arg
	end
	value
end

def power(a,b)
	a**b
end

def factorial(num)
	if (num == 0)
		1
	else
		num*factorial(num-1)
	end
end
			