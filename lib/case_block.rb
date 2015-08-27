require './row'

module CaseBlock
	def self.fizzbuzz(num, verbose=false)
		results = []
		1.upto(num).each do |index|
			output = ""
			case
			when index%3==0 && index%5==0
				output += "FizzBuzz"
			when index%3==0
				output += "Fizz"
			when index%5==0
				output += "Buzz"
			end
			puts "#{index} #{output}" if verbose
			results[index] = output
		end
		return results
	end
end