class CreateUnmeds < ActiveRecord::Migration[6.1]
  def change
    create_table :unmeds do |t|
      t.string :abreviacao
      t.string :descricao

      t.timestamps
    end
  end
end
