class CreateMaps < ActiveRecord::Migration[6.0]
  def change
    create_table :maps do |t|
      t.string :state_name, null: false
      t.string :state_code, null: false
      t.timestamps
    end
  end
end
