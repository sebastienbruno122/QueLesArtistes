class ContactMailer < ApplicationMailer

  def contact
    mail(to: 'sebastienbruno122@gmail.com', subject: 'test')
  end

end
