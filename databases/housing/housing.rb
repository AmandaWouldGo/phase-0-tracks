# DBC HOUSING ORGANIZER

# require sqlite3 gem

require 'sqlite3'
### TABLES ###
# create a sqlite3 database to hold info about my DBC housing: housing.db
# create two tables 
  #one (stay_type) delineates if the stay is a homestay or a housesit
  #two (owner) holds all info for the homestay including
    #owner_name
    #address
    #city
    #dates
    #stay_type_id would be a FOREIGN_KEY
  #possible 3rd table (pets) holds info for housesit including
    #pet_name
    #type
    #notes
    #owner_id would be a FOREIGN KEY

### NEED TO RESEARCH THREE TABLES AND PRIMARY/FOREIGN KEYS
### QUESTION: DO I NED TO HAVE ONLY ONE TABLE BE PRIMARY? OR CAN TABLE 1 BE PRIMARY TO TABLE TWO
### AND TABLE TWO BE PRIMARY FOR TABLE 3?

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
# add method?
# update method
# display method? maybe not necessary? maybe able to do this directly in case/if statement
# delete method
# method that shows readable table at end of program and then exits the program
