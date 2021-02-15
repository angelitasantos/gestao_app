class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :descricao
      t.string :tipo
      t.integer :typeitem_id
      t.integer :category_id
      t.integer :unmed_id
      t.integer :ncm_id
      t.float :estseg
      t.float :leadtime
      t.float :altura
      t.float :comprimento
      t.float :largura
      t.float :pesobruto
      t.float :pesoliquido
      t.float :lastro
      t.float :camada
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
