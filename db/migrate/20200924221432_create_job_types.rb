class CreateJobTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :job_types do |t|
      t.integer :resume_id
      t.string :industry

      t.timestamps
    end
  end
end
