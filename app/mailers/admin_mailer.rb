# app/mailers/admin_mailer.rb
class AdminMailer < ApplicationMailer
  default from: 'no-reply@yourdomain.com'

  def welcome_email(admin)  # Here, the 'admin' parameter will be passed
    @admin = admin  # Now, you can use '@admin' in the email view
    @url = 'http://yourapp.com/admin_login'  # Replace with your actual admin login URL
    mail(to: @admin.email, subject: 'Welcome to the Admin Panel')
  end
end
