class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :name
      t.string :github_username

      t.timestamps
    end
  end
end
