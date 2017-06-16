class Service < ActiveRecord::Base
  belongs_to :skill
  belongs_to :member
  belongs_to :order
end
