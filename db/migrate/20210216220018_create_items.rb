class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :codigo
      t.string :descricao
      t.string :inativo
      t.integer :tipo
      t.float :embvenda
      t.float :estseg
      t.float :leadtime
      t.float :altura
      t.float :comprimento
      t.float :largura
      t.float :pesobruto
      t.float :pesoliquido
      t.float :lastro
      t.float :camada
      t.string :ean
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.references :ncm, null: false, foreign_key: true
      t.references :typeitem, null: false, foreign_key: true
      t.references :unmed, null: false, foreign_key: true

      t.timestamps
    end
  end
end
