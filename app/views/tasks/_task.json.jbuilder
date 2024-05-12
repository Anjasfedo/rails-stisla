json.extract! task, :id, :title, :stock, :created_at, :updated_at
json.url task_url(task, format: :json)
