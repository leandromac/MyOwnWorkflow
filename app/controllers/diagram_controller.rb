class DiagramController < ApplicationController

  def index
    %x(bundle exec erd --filename='public/diagram/diagram_erd')
  end

end
