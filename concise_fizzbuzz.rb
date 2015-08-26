module Concise
	def self.fizzbuzz
		(1..100).inject([]) do |result, index|
			output = ""
			output += "Fizz" if index%3==0
			output += "Buzz" if index%5==0
			puts "#{index} #{output}"
			result[index] = output
			result
		end
	end
end

Concise.fizzbuzz