class AdminProfile < ActiveRecord::Base
  belongs_to :skill
  belongs_to :admin
end
