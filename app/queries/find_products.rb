class FindProducts
  attr_reader :products
  def initialize(products = initial_scope)
    @products = products
  end

  def callback(params = {})
    scoped = products
    scoped = filter_by_category_id(scoped, params[:category_id])
    scoped = filter_by_min_price(scoped, params[:min_price])
    scoped = filter_by_max_price(scoped, params[:max_price])
    scoped = filter_by_query_txt(scoped, params[:query_text])
    sort(scoped, params[:order_by])
  end

  def sort(scoped, order_by)
    order_by_query = Product::ORDER_BY.fetch(order_by&.to_sym, 'created_at DESC')
    scoped.order(order_by_query)
  end

  def filter_by_query_txt(scoped, query_txt)
    return scoped unless query_txt.present?

    scoped.search_full_text(query_txt)
  end

  def filter_by_max_price(scoped, max_price)
    return scoped unless max_price.present?

    scoped.where('price <= ?', max_price)
  end

  def filter_by_min_price(scoped, min_price)
    return scoped unless min_price.present?

    scoped.where('price >= ?', min_price)
  end

  def filter_by_category_id(scoped, category_id)
    return scoped unless category_id.present?

    scoped.where(category_id: category_id)
  end

  private
  def initial_scope
    Product.with_attached_photo
  end
end