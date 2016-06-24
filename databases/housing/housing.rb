# DBC HOUSING ORGANIZER

# require sqlite3 gem

require 'sqlite3'

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

# add user interface (I'm the only user for now!)
# ask user what to do: add, update, display or delete
# 
