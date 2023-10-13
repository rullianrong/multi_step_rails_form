class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.text :job_perform
      t.integer :job_time_hour
      t.integer :job_time_min
      t.string :job_current
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
