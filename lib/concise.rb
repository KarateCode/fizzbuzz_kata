require './row'

module Concise
	def self.fizzbuzz(num, verbose=false)
		(1..num).inject([]) do |result, index|
			output = ""
			output += "Fizz" if index%3==0
			output += "Buzz" if index%5==0
			puts "#{index} #{output}" if verbose
			result[index] = output
			result
		end
	end
end