class StaticPagesController < ApplicationController
  
  def home
      @comments = Comment.paginate(:page => params[:page], 
        :per_page => 5,
        :order => "created_at DESC")
    

  end
  
  def rsvp
  end

  def contact
  end  
  
end
