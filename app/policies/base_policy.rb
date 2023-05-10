# frozen_string_literal: true

class BasePolicy
  attr_reader :record

  def initialize(record)
    @record = record
  end

  def method_missing(_m, *_args)
    false
  end
end
