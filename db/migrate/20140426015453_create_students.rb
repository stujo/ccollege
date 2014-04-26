class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :github_username
      t.references :squad, index: true

      t.timestamps
    end
  end
end
