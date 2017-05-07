class Film < ApplicationRecord
validates :title, presence: true
validates :director, presence: true
validates :characters, presence: true
has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "100x100#" }
validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
