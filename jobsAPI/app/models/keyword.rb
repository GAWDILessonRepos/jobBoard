class Keyword < ActiveRecord::Base
  has_many :jobs, through: :join
end
