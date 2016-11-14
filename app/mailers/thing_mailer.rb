class ThingMailer < ApplicationMailer

  def new_thing(thing)
    @thing = thing
    mail(to: "chris@chrisvannoy.com", subject: @thing.name)
  end

end
