class User < ActiveRecord::Base
  has_many :events
  attr_accessible :user, :age, :email

  validates :user, presence: true
  validates :age, presence: true
  validates :email, presence: true, uniqueness: true
  
end