json.array!(@surveys) do |survey|
  json.extract! survey, :id, :title, :description, :start, :end
  json.url survey_url(survey, format: :json)
end
