#A program to store data of daily exercise for each user 
#Two tables will be needed: one table to record the daily exercies, and another table to record the user information

# require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("awesome.db")
db.results_as_hash = true

# create table for exercise tasks
create_exercises_table = <<-SQL
  CREATE TABLE IF NOT EXISTS exercises(
    exercise_id INTEGER PRIMARY KEY,
    date VARCHAR(255),
    number_of_pushups INT,
	number_of_setups INT,
	number_of_pullups INT,
	minutes_of_plank INT,
	miles_jogged INT,
	minutes_jogged INT
  )
SQL

# create table for users
create_users_table = <<-SQL
  CREATE TABLE IF NOT EXISTS users(
    user_id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    body_weight INT
  )
SQL

# create a exercises and a users table (if it's not there already)
db.execute(create_exercises_table)
db.execute(create_users_table)

