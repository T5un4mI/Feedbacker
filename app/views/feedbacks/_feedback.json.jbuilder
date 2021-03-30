json.extract! feedback, :id, :first_name, :last_name, :middle_name, :city_id, :phone, :email, :comment, :created_at, :updated_at
json.url feedback_url(feedback, format: :json)
