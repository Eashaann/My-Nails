class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def front_page
  end

 def thankyou
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
 	UserMailer.contact_form(@email, @name, @message).deliver_now
	end
end
