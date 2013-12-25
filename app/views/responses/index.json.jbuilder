json.array!(@responses) do |response|
  json.extract! response, :id, :answer_choice_id, :question_id
  json.url response_url(response, format: :json)
end
