# DBC HOUSING ORGANIZER

# require sqlite3 gem

### TABLES ###
# create a sqlite3 database to hold info about my DBC housing: housing.db
# create two tables 
  #one (stay_type) delineates if the stay is a homestay or a housesit
  #two (home) holds all info for the homestay including
    #owner_name
    #address
    #city
    #dates
  #possible 3rd table (pets) holds info for housesit including
    #pet_name
    #type
    #notes

### USER INTERFACE ###
# add user interface (I'm the only user for now!)
# use loop that allows a user to iterate through the program multiple times until satisfied with outcome
# ask user what to do: add, update, display or delete
# collect user's answer and save in a variable
# use a case statement or if statement to determine what to do next based on user answer
# inside case or if, the user's info will alter the table
  # if 'add' then a user can add all the data to send to table/s
  # if 'update' then user will alter existing data in table/s
  # if 'display' then program will print all relevant data
  # if 'delete' then user will choose which data to delete from table (not delete table!)

### METHODS ###
# need methods that add info into table/s
  # __.execute(<sqlite3 code here>)
# add method
# update method
# display method
# delete method

require 'sqlite3' 

db = SQLite3::Database.new("homes.db")

create_table_1 = <<-SQL
  CREATE TABLE IF NOT EXISTS homes(
  id INTEGER PRIMARY KEY,
  owner VARCHAR(255),
  address VARCHAR(255),
  city  VARCHAR(255),
  dates VARCHAR(255)
  stay_type_id INT,
  FOREIGN KEY (stay_type_id) REFERENCES stay_type(id)
  )
SQL
######## START HERE TO FIGURE FOREIGN KEYS OUT!!! NEED HOME TO CONNECT TO STAY_TYPE O:M AND HOMES TO CONNECT TO PETCARE O:M ########
create_table_2 = <<-SQL
  CREATE TABLE IF NOT EXISTS stay_type(
  id INTEGER PRIMARY KEY,
  type VARCHAR(255)
  )
SQL

create_table_3 = <<-SQL
  CREATE TABLE IF NOT EXISTS petcare(
  id INTEGER PRIMARY KEY,
  pet_name VARCHAR(255),
  type VARCHAR(255),
  needs VARCHAR(255),
  home_id INT,
  FOREIGN KEY (home_id) REFERENCES homes(id)
  )
 SQL

db.execute(create_table_1)
db.execute(create_table_2)
db.execute(create_table_3)

def add_new_home (db, owner_new, address_new, city_new, dates_new, stay_type)
  db.execute("INSERT INTO homes (owner, address, city, dates, stay_type_id) VALUES (?, ?, ?, ?, ?)", [owner_new, address_new, city_new, dates_new, stay_type])
end

def update_existing (db, name_to_update, value_to_update, updated_value)
  db.execute("UPDATE homes SET #{value_to_update}= ? WHERE owner = ?",[updated_value, name_to_update])
end

def display_homes (db)
  display = db.execute(<<-SQL
    SELECT homes.dates, stay_type.type, homes.owner, homes.address, homes.city
    FROM homes
    JOIN stay_type
    ON stay_type.id = homes.stay_type_id
    ORDER BY homes.dates
    SQL
  )

  display.each do |value|
    puts "---------"
    puts value
  end
end

db.execute("INSERT INTO stay_type (type) VALUES ('homestay')")
db.execute("INSERT INTO stay_type (type) VALUES ('housesit')")

puts "Welcome, Amanda, to your DBC Housing Organizer"
puts "What do you want to do today? Type one: 'add', 'update', 'display', 'delete' or 'done'."

amanda_wants = ""
while amanda_wants != 'done'
  amanda_wants = gets.chomp.downcase
  break if amanda_wants == 'done'
  case amanda_wants
    when 'add'
      puts "Add the name of the home owner:"
      owner_new = gets.chomp
      puts "Add the street address:"
      address_new = gets.chomp.upcase
      puts "Add the city:"
      city_new = gets.chomp.upcase
      puts "Add the range of dates you'll be staying (ex: 10/1-10/25):"
      dates_new = gets.chomp
      puts "Will this be a homestay or a housesit?"
      stay_id = gets.chomp
      if stay_id == 'homestay'
        stay_id = 1
      else
        stay_id = 2
      end
      add_new_home(db, owner_new, address_new, city_new, dates_new, stay_id)
    when 'update'
      puts 'What home owner would you like to update?'
      owner_choice = gets.chomp
      puts 'Choose one of the following to update: name, address, city, dates'
      update_request = gets.chomp
      if update_request == 'name'
        puts "What is the new name?"
        new_name = gets.chomp
        update_existing(db, owner_choice, 'owner', new_name)
      elsif update_request == 'address'
        puts "What is the new address?"
        new_address = gets.chomp.upcase
        update_existing(db, owner_choice, 'address', new_address)
      elsif update_request == 'city'
        puts "What is the new city?"
        new_city = gets.chomp.upcase
        update_existing(db, owner_choice, 'city', new_city)
      else
        puts "What are the new dates of your stay with #{owner_choice}? (ex: 10/1-10/25)"
        new_dates = gets.chomp
        update_existing(db, owner_choice, 'dates', new_dates)
      end
    when 'display'
      display_homes(db)
    when 'delete'
      puts 'What home owner would you like to delete?'
      owner_choice = gets.chomp
      db.execute("DELETE FROM homes WHERE owner = ?", [owner_choice])
  end

  puts "Would you like to do anything else? Type one: 'add', 'update', 'display', 'delete' or 'done'."
end

puts "Here is a table of your DBC housing:"
puts ""
puts "----------------------"
display_homes(db)
puts "----------------------"

puts "Are there any pets for your housesitting gigs? 'yes' or 'no'"
answer = gets.chomp

if answer == 'yes'
  puts "What is the pet's name?"
  pet_name = gets.chomp.capitalize
  puts "What kind of animal is #{pet_name}?"
  type = gets.chomp.downcase
  puts "What are #{pet_name}'s daily needs?"
  needs = gets.chomp.downcase

  db.execute("INSERT INTO petcare (pet_name, type, needs) VALUES (?, ?, ?)", [pet_name, type, needs])
else
  puts "Perhaps their favorite pets are ceramic."
end

p db.execute("SELECT * FROM petcare")