require "pry"
require "active_record"

# TODO: CONNECT TO THE DATABASE
ActiveRecord::Base.establish_connection(
    adapter: "sqlite3",
    database: "db/school.db"
)

# TODO: CREATE TABLE
create_courses_table = <<-SQL
  CREATE TABLE IF NOT EXISTS courses (
    id INTEGER PRIMARY KEY,
    name TEXT,
    description TEXT,
    duration INTEGER )
SQL

create_grades = <<-SQL
  CREATE TABLE IF NOT EXISTS grades (
    id INTEGER PRIMARY KEY,
    score INTEGER NOT NULL,
    UNIQUE(score)
  )
SQL

create_scores = <<-SQL
  CREATE TABLE IF NOT EXISTS scores (
    id INTEGER PRIMARY KEY,
    score INTEGER NOT NULL,
    UNIQUE(score)
  )
SQL

ActiveRecord::Base.connection.execute(create_courses_table)
ActiveRecord::Base.connection.execute(create_grades)
ActiveRecord::Base.connection.execute(create_scores)

# TODO: Create class that associates with the db table
class Course < ActiveRecord::Base
end

class Grade < ActiveRecord::Base
end

class Score < ActiveRecord::Base
end

# TODO: VIEW METHODS AVAILABLE FOR TABLE (methods)

# TODO: COLUMN NAMES (column_names)

# TODO: CREATE NEW RECORD (create)

# TODO: VIEW ALL RECORDS (all)

# TODO: FIND BY ID (find)

# TODO: FIND BY GIVEN CONDITIONS (find_by)

# TODO: UPDATE RECORDS (save)

binding.pry
