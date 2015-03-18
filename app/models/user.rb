class User < ActiveRecord::Base
  attr_accessible :user, :age, :email
  
  validates :email, presence: true,
              uniqueness: true

  
end