# Player Maker - allows input of a basketball player with attributes including name, shooting rating, speed rating, and overall skill rating. These inputs will be stored in a table and can be used to create a player in a video game later.

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("player_maker.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS player_maker(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    shooting INT,
    speed INT,
    skill INT
  )
SQL

# create a kittens table (if it's not there already)
db.execute(create_table_cmd)

puts "Welcome to Player Maker TM. Please enter a player's name, his shooting skill level (1-10), speed (1-10), and overall skill level (1-10). This player's information will then be saved and can be retrieved to be used later in a game."

name_input = gets.chomp().to_s
shooting_input = gets.chomp.to_i
speed_input = gets.chomp.to_i
skill_input = gets.chomp.to_i

def create_player(db, name, shooting, speed, skill)
  db.execute("INSERT INTO player_maker (name, shooting, speed, skill) VALUES (?, ?, ?, ?)", [name, shooting, speed, skill])
end

create_player(db, name_input, shooting_input, speed_input, skill_input)

puts "Thank you for entering a player with the following information - Name: #{name_input}, shooting skill #{shooting_input}, speed #{speed_input}, and overal skill #{skill_input}."


