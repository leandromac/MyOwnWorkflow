class Client < ActiveRecord::Base

    # Paperclip
    has_attached_file :image, styles: { large: "800x800#", medium: "320x320#", thumb: "150x150>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
