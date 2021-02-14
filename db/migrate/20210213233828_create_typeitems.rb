class CreateTypeitems < ActiveRecord::Migration[6.1]
  def change
    create_table :typeitems do |t|
      t.string :name

      t.timestamps
    end
  end
end
