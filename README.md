## Checking out project

This project can be checked out with the following:

```
git clone https://github.com/KarateCode/fizzbuzz_kata
cd fizzbuzz_kata
```

## FizzBuzz Kata

Since this is a simple exercise, I provided three different solutions.  They all have spec written for them.  The test suite can be run with:

`rspec spec --tag test`

If you'd like to run the solutions individually, they can be run with any of the following commands:

```
ruby if_block_fizzbuzz.rb
ruby concise_fizzbuzz.rb
ruby case_block_fizzbuzz.rb
```

## Databased Katas

To create the database table for these katas, you'll need to run the script:

`ruby create_table.rb`

For this to work, the script assumes that you have a MySQL instance installed on your local machine with a database of 'fizzbuzz' already created.  Once the schema has been created, you can run either of the following scripts:

```
ruby database_fizzbuzz.rb
ruby mass_updater_fizzbuzz.rb
```

## Run Benchmarks

To see the results of the benchmarking suite, you may run the following command:

`rspec spec --tag performance`