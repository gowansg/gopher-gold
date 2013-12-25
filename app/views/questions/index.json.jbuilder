json.array!(@questions) do |question|
  json.extract! question, :id, :text, :tooltip, :AnswerChoice_id, :survey_id
  json.url question_url(question, format: :json)
end
