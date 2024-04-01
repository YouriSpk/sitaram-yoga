json.extract! home_page_content, :id, :title, :content, :created_at, :updated_at
json.url home_page_content_url(home_page_content, format: :json)
