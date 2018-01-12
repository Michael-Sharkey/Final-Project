class Meal < ApplicationRecord
  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

  belongs_to :user

  def self.to_slide_info
    order(created_at: :desc).map{|x|[x.photo.url, x.created_at.to_date, x.good]}.to_json
  end
end
