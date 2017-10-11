# require 'slack-ruby-client'

class Post < ApplicationRecord
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  geocoded_by :address
  after_validation :geocode

  validates :title, :body, :cost, presence: true
  belongs_to :category
  belongs_to :user
  has_many :comments, dependent: :destroy

  def self.search(search)
    if search
        search = search.downcase
        where("lower(title) LIKE ?", "%#{search}%")
    else
      all
    end
  end
  
#  Slack.configure do |config|
#    config.token = ENV[SLACK_API_TOKEN]
#  end

  # client = Slack::Web::Client.new
  # client.auth_test

  # client.files_upload(
  #   channels: '#postings',
  #   as_user: true,
  #   file: :image,
  #   title: :title,
  #   filename: :geocode,
  #   initial_comment: :cost
  # )

end
