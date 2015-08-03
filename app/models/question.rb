class Question < ActiveRecord::Base
  belongs_to :user
  belongs_to :urgency
  has_many :comments
  
  validates_presence_of :steps_taken
  
  scope :unresolved, -> {
    where(resolved: false)
  }
end

