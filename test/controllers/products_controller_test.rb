require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
    test 'render a list of products' do
        get products_path
        
        assert_response :success
        assert_select '.product', 2
    end

    test 'render a detail product page' do
        get product_path(products(:Product1))

        assert_response :success
        assert_select '.title', 'Monitor Gaming'
        assert_select '.description', '20 Pulgadas'
        assert_select '.price', '40000$'
    end
end