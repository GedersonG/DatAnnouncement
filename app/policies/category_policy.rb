# frozen_string_literal: true

class CategoryPolicy < BasePolicy
  def method_missing(_m, *_args)
    Current.user.role == 'admin'
  end
end
