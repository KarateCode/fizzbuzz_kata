require './spec/spec_helper'
require './lib/concise'

RSpec.describe Concise do
	describe "#score", :test do
		it "returns 'Fizz' for appropriate values" do
			results = Concise.fizzbuzz(100)

			expect(results[1]).to eq("")
			expect(results[3]).to eq("Fizz")
			expect(results[6]).to eq("Fizz")
			expect(results[9]).to eq("Fizz")
		end

		it "returns 'Buzz' for appropriate values" do
			results = Concise.fizzbuzz(100)

			expect(results[5]).to eq("Buzz")
			expect(results[10]).to eq("Buzz")
		end

		it "returns 'Buzz' for appropriate values" do
			results = Concise.fizzbuzz(100)

			expect(results[15]).to eq("FizzBuzz")
			expect(results[30]).to eq("FizzBuzz")
			expect(results[45]).to eq("FizzBuzz")
			expect(results[60]).to eq("FizzBuzz")
		end
	end

	describe "Benchmark", :performance do
		it "should be fast" do
			puts "Concise 1,000,000 rows: #{Benchmark.realtime{
				Concise.fizzbuzz(1000000)
			}}"
		end
	end
end