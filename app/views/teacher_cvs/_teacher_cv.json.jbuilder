json.extract! teacher_cv, :id, :title, :content, :created_at, :updated_at
json.url teacher_cv_url(teacher_cv, format: :json)
