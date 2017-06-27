class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :skill, counter_cache: true

  ratyrate_rateable "quality"

  scope :search, ->(q, page) {
    where("lower(name) LIKE ?", "%#{q.downcase}%").page(page).per(100)
  }
  scope :pagination_order, ->(page) {
    order(name: :asc).page(page).per(100)
  }

  # Paperclip
  has_attached_file :image, styles: { large: "800x800#", medium: "320x320#", thumb: "1100x150>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/



end
