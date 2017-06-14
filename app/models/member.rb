class Member < ActiveRecord::Base
  belongs_to :skill

  enum avaliations: {:notbad => 0, :good => 1, :excellent => 2}


end
