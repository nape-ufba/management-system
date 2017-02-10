json.extract! user, :id, :name, :email, :course_id, :user_type_id, :role_id, :special_need_id, :phone, :document_number, :created_at, :updated_at
json.url user_url(user, format: :json)