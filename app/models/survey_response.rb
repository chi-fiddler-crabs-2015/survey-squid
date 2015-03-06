class SurveyResponse < ActiveRecord::Base
  belongs_to :survey_take
  belongs_to :choice
end
