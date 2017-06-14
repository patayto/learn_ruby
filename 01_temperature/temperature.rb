#write your code here

# Convert celsius to farenheit
def ftoc(temp_in_celsius)
	(temp_in_celsius - 32) * (5.0/9.0)
end

# Convert farenheit to celsius
def ctof(temp_in_farenheit)
	(temp_in_farenheit * (9.0/5.0)) + 32
end