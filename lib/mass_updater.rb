require './row'

module MassUpdater
	def self.fizzbuzz(num, verbose=false)
		row_inserts = []
		results = (1..num).inject([]) do |result, index|
			output = ""
			output += "Fizz" if index%3==0
			output += "Buzz" if index%5==0
			puts "#{index} #{output}" if verbose
			result[index] = output
			# Row.create(number: index, output: output)
			row_inserts << "#{index}, '#{output}'"
			result
		end
		Row.insert_ignore('rows', [:number, :output], row_inserts)
		return results
	end
end
