class CreateSquads < ActiveRecord::Migration
  def change
    create_table :squads do |t|
      t.string :color
      t.references :instructor, index: true

      t.timestamps
    end
  end
end
