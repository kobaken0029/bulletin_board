json.array!(@contributions) do |contribution|
  json.extract! contribution, :id, :text, :contributor, :email
  json.url contribution_url(contribution, format: :json)
end
