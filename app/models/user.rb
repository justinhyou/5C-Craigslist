class User < ApplicationRecord
  include Gravtastic
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness:true
  validates_format_of :email, :with => /\A[\w+\-.]+@[a-z\d\.]*((pomona|cmc|hmc|scripps|pitzer))\.edu\z/i
  validates :password, length: {minimum: 6}

  has_many :posts
  has_gravatar

  has_secure_password
end
