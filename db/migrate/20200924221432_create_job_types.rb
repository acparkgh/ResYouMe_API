class CreateJobTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :job_types do |t|
      t.integer :resume_id

      t.timestamps
    end
  end
end
