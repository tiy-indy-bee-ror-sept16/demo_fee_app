class Thing < ApplicationRecord

  after_create :send_email

  def send_email
    ThingMailer.new_thing(self).deliver
  end

end
