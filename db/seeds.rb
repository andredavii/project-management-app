# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(
  :email => "admin@projects.local",
  :password => "Pass1234"
)

project_hashes = [
  {
    :name => "Project 1",
    :description => "Random text"
  },
  {
    :name => "Project 2",  
    :description => "Random text"
  },
  {
    :name => "Project 3", 
    :description => "Random text"  
  }
]

Project.create(project_hashes)

Project.all.each do |project|
  10.times do |index|
    Task.create(
      :project => project,
      :name => "Task #{index}",
      :due_date => Date.today,
      :complete => false
    )

  end
end
