class CreateMovements < ActiveRecord::Migration[5.1]
  def change
    create_table :movements do |t|
      t.string :name
      t.boolean :primary
      t.boolean :accessory

      t.timestamps
    end
  end
end
