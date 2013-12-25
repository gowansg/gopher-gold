json.array!(@answer_choices) do |answer_choice|
  json.extract! answer_choice, :id, :question, :id
  json.url answer_choice_url(answer_choice, format: :json)
end
