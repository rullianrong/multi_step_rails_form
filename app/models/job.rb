class Job < ApplicationRecord
  validates_presence_of :job_perform, :job_time_hour, :job_time_min, :job_current
  
  belongs_to :user
end
