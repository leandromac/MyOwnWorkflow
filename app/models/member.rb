class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  belongs_to :skill, counter_cache: true

  enum avaliations: {:notbad => 0, :good => 1, :excellent => 2}


end
