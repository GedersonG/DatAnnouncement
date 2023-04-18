require "test_helper"

class FavoritesControllerTest < ActionDispatch::IntegrationTest
  setup do
    login
    @product = products(:Product1)
  end

  test "should create favorite" do
    # 'Favorite.count'
    assert_difference('Favorite.count', 0) do
      post favorites_url(product_id: @product.id)
    end

    assert_redirected_to product_path(@product)
  end
end
