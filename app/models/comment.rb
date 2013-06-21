class Comment < ActiveRecord::Base
  attr_accessible :content, :email, :name
  validates(:content, presence: true, length: { maximum: 1000 } )
  validates(:name, presence: true, length: {maximum: 200} )
  validates(:email, length: {maximum: 200} )

end
