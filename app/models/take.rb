class Take < ActiveRecord::Base
  belongs_to    :taker, class_name: "User"
  has_many      :responses
  belongs_to    :survey
end

# survey.takers
# ActiveRecord::HasManyThroughSourceAssociationNotFoundError: Could not find the source association(s) :user in model Take. Try 'has_many :takers, :through => :takes, :source => <name>'. Is it one of taker, responses, or survey?
# use
