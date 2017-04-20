class UserMailer < ApplicationMailer
  default from: 'everybody@appacademy.oi'

  def welcome_email(user)
    @user = user

    mail(to: @user.email, subject: "Welcome to my site")
  end
end
