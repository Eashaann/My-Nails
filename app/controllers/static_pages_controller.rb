class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

 def thankyou
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  ActionMailer::Base.mail(:from => @email,
      :to => 'donaeasha25@gmail.com',
      :subject => "A new contact form message from #{@name}",
      :body => @message).deliver_now
	end
end
