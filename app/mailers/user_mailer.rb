# app/mailers/user_mailer.rb
class UserMailer < ApplicationMailer
  default from: 'no-reply@yourdomain.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://yourapp.com/login'  # Update this with your actual login URL
    mail(to: @user.email, subject: 'Welcome to Our Platform!')
  end
end
