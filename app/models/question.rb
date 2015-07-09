class Question < ActiveRecord::Base
  belongs_to :user
  belongs_to :urgency
  
  validates_presence_of :steps_taken
  
end

