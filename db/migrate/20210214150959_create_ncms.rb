class CreateNcms < ActiveRecord::Migration[6.1]
  def change
    create_table :ncms do |t|
      t.string :codigo
      t.string :descricao
      t.integer :tipoicm
      t.float :percicm
      t.float :percipi
      t.float :percst
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
