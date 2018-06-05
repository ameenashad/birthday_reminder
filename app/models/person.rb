class Person < ApplicationRecord
  after_create :call_worker

  def call_worker
    CallTheWorkerToEmail.perform_later    
  end  

end
