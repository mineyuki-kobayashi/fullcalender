json.extract! calender_event, :id, :title, :description, :start_date, :end_date, :created_at, :updated_at
json.url calender_event_url(calender_event, format: :json)
