module CaseBlock
	def self.fizzbuzz
		results = []
		1.upto(100).each do |index|
			output = ""
			case 
			when index%3==0 && index%5==0
				output += "FizzBuzz"
			when index%3==0
				output += "Fizz"
			when index%5==0
				output += "Buzz"
			end
			puts "#{index} #{output}"
			results[index] = output
		end
		return results
	end
end

CaseBlock.fizzbuzz