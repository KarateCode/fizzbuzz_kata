require 'active_record'
require 'mysql2' # or 'pg' or 'sqlite3'

# Change the following to reflect your database settings
ActiveRecord::Base.establish_connection(
	adapter:  'mysql2', # or 'postgresql' or 'sqlite3'
	host:     'localhost',
	database: 'fizzbuzz',
	username: 'root',
	password: ''
)

sql = '
	CREATE TABLE IF NOT EXISTS rows	(
    	id INT NOT NULL AUTO_INCREMENT,
    	number INT,
    	output VARCHAR(8),
    	PRIMARY KEY (id)
	)
'
ActiveRecord::Base.connection.execute(sql)