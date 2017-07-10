#A program to store data of daily exercise for each user 
#Two tables will be needed: one table to record user information, and another table to record the daily exercies 

# require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("awesome.db")

# create table for users
create_users_table = <<-SQL
  CREATE TABLE IF NOT EXISTS users(
    user_id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    body_weight INT
  )
SQL

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

# create a users table and an exercises table (if it's not there already)
db.execute(create_users_table)
db.execute(create_exercises_table)

# user interface
def user_input
	puts "What is your full name?"
	name = gets.chomp.capitalize
	puts "How old are you?"
	age = gets.chomp.to_i
	puts "How much do you weight? (in lbs)"
	weight = gets.chomp.to_f
	puts "What is today's date?"
	date = gets.chomp
	puts "How many push ups did you do?"
	number_of_pushups = gets.chomp.to_i
	puts "How many set ups did you do?"
	number_of_setups = gets.chomp.to_i
	puts "How many pull ups did you do?"
	number_of_pullups = gets.chomp.to_i
	puts "How many minutes of plank did you do?"
	minutes_of_plank = gets.chomp.to_f
	puts "How many miles did you jogged?"
	miles_jogged = gets.chomp.to_f
	puts "How many minutes did you jogged?"
	minutes_jogged = gets.chomp.to_f
end

# store user inputs into database
def store_users(db, name, age, weight)
	db.execute("INSERT INTO users (name, age, weight) VALUES (?, ?, ?)", [name, age, weight])
end

def store_exercises(db, date, number_of_pushups, number_of_setups, number_of_pullups, minutes_of_plank, miles_jogged, minutes_jogged)
	db.execute("INSERT INTO users (date, number_of_pushups, number_of_setups, number_of_pullups, minutes_of_plank, miles_jogged, minutes_jogged) VALUES (?, ?, ?, ?, ?, ?, ?)", [date, number_of_pushups, number_of_setups, number_of_pullups, minutes_of_plank, miles_jogged, minutes_jogged])
end
# provide users output from the database
exercise = db.execute("SELECT name, age, weight, date, number_of_pushups, number_of_setups, number_of_pullups, minutes_of_plank, miles_jogged, minutes_jogged FROM users, exercises WHERE users.user_id = exercises.exercise_id")

exercise.each do |exercises|
	puts "On #{date}, at age of #{age}, #{name} weights #{weight}lb, did #{number_of_pushups} push ups, #{number_of_setups} set ups, #{number_of_pullups} pull ups, #{minutes_of_plank} minutes of plank, and jogged #{miles_jogged} miles in #{minutes_jogged} minutes! Awesome job, and please keep it up!"
end
