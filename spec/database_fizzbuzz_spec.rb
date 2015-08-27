require './spec/spec_helper'
require './lib/database'

RSpec.describe Database do
	describe "#score" do
		it "returns 'Fizz' for appropriate values" do
			results = Database.fizzbuzz(100)

			expect(results[1]).to eq("")
			expect(results[3]).to eq("Fizz")
			expect(results[6]).to eq("Fizz")
			expect(results[9]).to eq("Fizz")
		end

		it "returns 'Buzz' for appropriate values" do
			results = Database.fizzbuzz(100)

			expect(results[5]).to eq("Buzz")
			expect(results[10]).to eq("Buzz")
		end

		it "returns 'Buzz' for appropriate values" do
			results = Database.fizzbuzz(100)

			expect(results[15]).to eq("FizzBuzz")
			expect(results[30]).to eq("FizzBuzz")
			expect(results[45]).to eq("FizzBuzz")
			expect(results[60]).to eq("FizzBuzz")
		end
	end
end