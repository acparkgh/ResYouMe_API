class CreateResumes < ActiveRecord::Migration[6.0]
  def change
    create_table :resumes do |t|
      t.integer :user_id
      t.text :bio
      t.text :experience
      t.text :education
      t.text :skills
      t.text :misc

      t.timestamps
    end
  end
end
