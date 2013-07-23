class StaticController < ApplicationController
  skip_before_filter :authorize
  
  def contact
  end
  
end