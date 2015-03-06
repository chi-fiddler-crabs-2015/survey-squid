class Take < ActiveRecord::Base
  belongs_to    :taker, class_name: "User"
  has_many      :responses
  belongs_to    :survey
end
