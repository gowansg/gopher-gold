class Response < ActiveRecord::Base
  belongs_to :answer_choice
  belongs_to :question
end
