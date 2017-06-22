class Skill < ActiveRecord::Base
      validates_presence_of :title
      has_many :members
end
