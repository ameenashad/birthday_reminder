class BirthdayMailer < ApplicationMailer
  default from: 'ameena@inkoop.in'

  def birthday_email_reminder name
    @name = name
    mail(to: 'ameena@inkoop.in', subject: 'Birthday of #{@name}')
  end

end
