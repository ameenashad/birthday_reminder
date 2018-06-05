class SendEmail < ApplicationJob

  def perform name
    BirthdayMailer.birthday_email_reminder(name).deliver
  end

end
