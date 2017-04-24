class Corgi < ActiveRecord::Base
  has_many :toy, as: :toyable
end
