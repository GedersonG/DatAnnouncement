# frozen_string_literal: true

require 'test_helper'

class FavoritesControllerTest < ActionDispatch::IntegrationTest
  setup do
    login
    @product = products(:Product2)
    @product2 = products(:Product1)
  end

  test 'should create favorite' do
    # 'Favorite.count'
    assert_difference('Favorite.count', 1) do
      post favorites_url(product_id: @product.id)
    end

    assert_redirected_to product_path(@product)
  end

  test 'should return my favorites' do
    get favorites_url

    assert_response :success
  end

  test 'should unfavorite' do
    # 'Favorite.count'
    assert_difference('Favorite.count', -1) do
      delete favorite_url(@product2.id)
    end

    assert_redirected_to product_path(@product2)
  end
end
