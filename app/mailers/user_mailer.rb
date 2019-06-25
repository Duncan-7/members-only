class UserMailer < ApplicationMailer
  default from: 'secret@membersonly.com'

  def welcome_email
    @user = params[:user]
    @url = 'http://localhost:3000/login'
    mail(to: @user.email, subject: 'Welcome to the In-Crowd')
  end
end
