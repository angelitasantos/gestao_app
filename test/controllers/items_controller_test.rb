require "test_helper"

class ItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get items_url
    assert_response :success
  end

  test "should get new" do
    get new_item_url
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post items_url, params: { item: { altura: @item.altura, camada: @item.camada, category_id: @item.category_id, codigo: @item.codigo, comprimento: @item.comprimento, descricao: @item.descricao, ean: @item.ean, embvenda: @item.embvenda, estseg: @item.estseg, inativo: @item.inativo, largura: @item.largura, lastro: @item.lastro, leadtime: @item.leadtime, ncm_id: @item.ncm_id, pesobruto: @item.pesobruto, pesoliquido: @item.pesoliquido, tipo: @item.tipo, typeitem_id: @item.typeitem_id, unmed_id: @item.unmed_id, user_id: @item.user_id } }
    end

    assert_redirected_to item_url(Item.last)
  end

  test "should show item" do
    get item_url(@item)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_url(@item)
    assert_response :success
  end

  test "should update item" do
    patch item_url(@item), params: { item: { altura: @item.altura, camada: @item.camada, category_id: @item.category_id, codigo: @item.codigo, comprimento: @item.comprimento, descricao: @item.descricao, ean: @item.ean, embvenda: @item.embvenda, estseg: @item.estseg, inativo: @item.inativo, largura: @item.largura, lastro: @item.lastro, leadtime: @item.leadtime, ncm_id: @item.ncm_id, pesobruto: @item.pesobruto, pesoliquido: @item.pesoliquido, tipo: @item.tipo, typeitem_id: @item.typeitem_id, unmed_id: @item.unmed_id, user_id: @item.user_id } }
    assert_redirected_to item_url(@item)
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete item_url(@item)
    end

    assert_redirected_to items_url
  end
end
