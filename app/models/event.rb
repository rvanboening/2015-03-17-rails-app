class Event < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :start_time, :end_time, :location, :user_id

  validates :name, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true,
  validates :location, presence: true,
  
end
