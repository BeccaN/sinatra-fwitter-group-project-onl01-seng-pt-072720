class User < ActiveRecord::Base
  has_secure_password
  has_many :tweets

  validates :email, :username, presence: true

end
