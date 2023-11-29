class Project < ApplicationRecord
  has_many :tasks

  #total tasks that have complete == true
  def complete_tasks
    complete = tasks.select do |task|
      task.complete?
    end
    complete.count
  end

  def total_tasks
    tasks.count
  end

  #take percentage of the total amount and completed amount of tasks 
  def completion
    complete_tasks.to_f/total_tasks.to_f
  end

  def percentage
    if tasks.present?
       (completion*100).to_i
    else 
      0
    end
  end
end
