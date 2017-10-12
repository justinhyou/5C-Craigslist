class Post < ApplicationRecord
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  geocoded_by :address
  after_validation :geocode

  validates :title, :body, :cost, presence: true
  belongs_to :category
  belongs_to :user
  has_many :comments, dependent: :destroy

  scope :newest, -> {order(created_at: :desc)}
  scope :oldest, -> {order(created_at: :asc)}
  scope :lowToHigh, -> {order(cost: :asc)}
  scope :highToLow, -> {order(cost: :desc)}

  def self.sort_by(sort_param)
    case sort_param
    when 'newest'
      newest
    when 'oldest'
      oldest
    when 'lowToHigh'
      lowToHigh
    when 'highToLow'
      highToLow
    else 
      all
    end
  end

  def self.search(search)
    if search
        search = search.downcase
        where("lower(title) LIKE ?", "%#{search}%")
    else
      all
    end
  end
end
