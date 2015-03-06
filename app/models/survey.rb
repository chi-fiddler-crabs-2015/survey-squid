class Survey < ActiveRecord::Base
  belongs_to :maker, class_name: "User"
  has_many   :questions
  has_many   :takes
  has_many   :takers, through: :takes, source: :users
end
