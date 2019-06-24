class NotificationMailer < ApplicationMailer
  default from: "no-reply@nomsterapp.com"

  def email
    @email = email
  end

  def comment_added
    mail(to: "stopthesignups@gmail.com",
         subject: "A comment has been added to your place")
  end
end