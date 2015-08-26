module IfBlock
	def self.fizzbuzz
		results = []
		(1..100).each do |index|
			output = ""
			if index%3==0 && index%5==0
				output += "FizzBuzz"
			elsif index%3==0
				output += "Fizz"
			elsif index%5==0
				output += "Buzz"
			end
			puts "#{index} #{output}"
			results[index] = output
		end
		return results
	end
end

IfBlock.fizzbuzz