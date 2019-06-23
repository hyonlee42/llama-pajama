class NotificationMailer < ApplicationMailer
  default from: "no-reply@nomsterapp.com"

  def comment_added
    mail(to: "hyon.lee@utexas.edu",
          subject: "A comment has been added to your place")
  end  

end
