class Order < ActiveRecord::Base
  belongs_to :client
  belongs_to :skill
  belongs_to :member
  has_many :services, inverse_of: :order

  accepts_nested_attributes_for :services, reject_if: :all_blank, allow_destroy: true

end
