class AddExtraFieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :fullname, :string
    add_column :users, :organization, :string
    add_column :users, :phone, :string
    add_column :users, :about, :text
    add_column :users, :status, :boolean, default: false
    add_column :users, :image, :string
  end
end
