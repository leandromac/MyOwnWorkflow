class Order < ActiveRecord::Base
  belongs_to :client
  belongs_to :skill
  belongs_to :member
end
