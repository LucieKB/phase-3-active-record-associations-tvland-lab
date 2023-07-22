require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    actor=Actor.create(first_name:first_name, last_name:last_name)
    "#{actor.first_name} #{actor.last_name}"
  end

  def list_roles
    self.characters.map do |c|
       "#{c.name} - #{c.show.name}"
    end
  end

end