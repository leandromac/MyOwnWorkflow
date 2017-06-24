class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  belongs_to :skill, counter_cache: true

  scope :search, ->(q) { where("lower(name) LIKE ?", "%#{q.downcase}%") }

  scope :ascending_order, ->(quantity = 9, page = 1) {
    limit(quantity).order(name: :asc).page(page).per(9)
  }
  # Paperclip
  has_attached_file :image, styles: { large: "800x800#", medium: "320x320#", thumb: "150x150>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


end
