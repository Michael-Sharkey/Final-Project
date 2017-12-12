class AddBasicInformationToUsersModel < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :username, :string
    add_column :users, :bio, :text
    add_column :users, :location, :string
    add_column :users, :age, :integer
    add_column :users, :height, :integer
    add_column :users, :weight, :integer
  end
end
