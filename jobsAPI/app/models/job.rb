class Job < ActiveRecord::Base
  belongs_to :location
  has_many :keywords, through: :join
  enum category: [ :design, :development ]
  enum positionType: [ :full_time, :contract, :freelance, :internship ]
end
