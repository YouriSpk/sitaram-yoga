json.extract! schedule, :id, :title, :location, :online_link, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
