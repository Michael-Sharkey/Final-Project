class CreateJournals < ActiveRecord::Migration[5.1]
  def change
    create_table :journals do |t|
      t.string :title
      t.text :entry
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
