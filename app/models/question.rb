class Question < ActiveRecord::Base
  belongs_to :AnswerChoice
  belongs_to :survey
end
