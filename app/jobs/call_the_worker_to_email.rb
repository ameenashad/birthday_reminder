class CallTheWorkerToEmail < ApplicationJob

  def perform
    byebug
    Person.each do |person|
      # SendEmail.set(wait_until: 1.minutes).perform_later(person.name)
      SendEmail.perform_later(person.name)
      # SendEmail.perform_in(1.minutes, person.name)
      # SendEmail.perform_in(person.birthday_date, person.name)
    end  
  end

end
