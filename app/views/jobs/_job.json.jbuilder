json.extract! job, :id, :job_perform, :job_time_hour, :job_time_min, :job_current, :user_id, :created_at, :updated_at
json.url job_url(job, format: :json)
