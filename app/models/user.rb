class User < ActiveRecord::Base
  has_many :comments, :as => :commentable, :dependent => :destroy

  has_many :fluencies
  has_many :languages, through: :fluencies  
end