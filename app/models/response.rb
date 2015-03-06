class Response < ActiveRecord::Base
  belongs_to :take
  belongs_to :choice
end
