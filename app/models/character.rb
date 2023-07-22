require 'pry'
class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    character = Character.create(name:name, catchphrase:catchphrase)
    "#{character.name} always says: #{character.catchphrase}"
  end

end