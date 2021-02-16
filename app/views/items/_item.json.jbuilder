json.extract! item, :id, :codigo, :descricao, :inativo, :tipo, :embvenda, :estseg, :leadtime, :altura, :comprimento, :largura, :pesobruto, :pesoliquido, :lastro, :camada, :ean, :user_id, :category_id, :ncm_id, :typeitem_id, :unmed_id, :created_at, :updated_at
json.url item_url(item, format: :json)
