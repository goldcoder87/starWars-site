class Post < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :url, presence: true
  validates :url, format: { with: URI.regexp }, allow_blank: true

  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "100x100#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  belongs_to :user
end
