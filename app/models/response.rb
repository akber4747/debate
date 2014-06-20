class Response < ActiveRecord::Base
  belongs_to :topic
  validates :description, :next_steps, :presence => true    
end
