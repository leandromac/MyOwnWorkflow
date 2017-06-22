class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  belongs_to :skill, counter_cache: true

  enum avaliations: {:notbad => 0, :good => 1, :excellent => 2}

  # Paperclip
  has_attached_file :image, styles: { large: "800x800#", medium: "320x320#", thumb: "150x150>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


end
