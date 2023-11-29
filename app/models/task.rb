class Task < ApplicationRecord
  belongs_to :project
  #overdue means due date is past and complete = false. 
  def overdue? 
    due_date < Date.today and !complete? 
  end
end

