class AverageCache < ActiveRecord::Base
  belongs_to :rater, :class_name => "Admin"
  belongs_to :rateable, :polymorphic => true
end
