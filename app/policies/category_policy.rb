class CategoryPolicy < BasePolicy
  def method_missing(m, *args, &block)
    Current.user.role == 'admin'
  end
end