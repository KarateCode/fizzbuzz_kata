require 'active_record'
require 'mass_updater'
require 'mysql2' # or 'pg' or 'sqlite3'
# Change the following to reflect your database settings
ActiveRecord::Base.establish_connection(
	adapter:  'mysql2', # or 'postgresql' or 'sqlite3'
	host:     'localhost',
	database: 'fizzbuzz',
	username: 'root',
	password: ''
)

class Row < ActiveRecord::Base
	extend MassUpdater
end