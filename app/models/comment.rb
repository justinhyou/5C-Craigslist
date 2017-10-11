class Comment < ApplicationRecord
	belongs_to :post
	#belongs_to :user

  validates :message, length: {minimum: 5}, presence: true
  #validates :user_id, presence: true

  def self.search(search)
    if search
        search = search.downcase
        where("lower(title) LIKE ?", "%#{search}%")
    else
      all
    end
  end
  
end
