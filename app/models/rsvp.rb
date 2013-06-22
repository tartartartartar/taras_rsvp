class Rsvp < ActiveRecord::Base
  attr_accessible :email, :name, :num_persons, :special, :will_attend
  validates :name, :presence => true
  validates :email, :presence => true
  validates :will_attend, :presence => true
  validates :num_persons, :length => { :maximum => 5 }
  validates :name, :length => { :maximum => 500 }
  validates :email, :length => { :maximum => 200 }

end
