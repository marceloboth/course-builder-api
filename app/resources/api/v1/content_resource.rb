class Api::V1::ContentResource < JSONAPI::Resource
  attributes :title, :order

  has_one :chapter

  def self.default_sort
    [{field: 'order', direction: :asc}]
  end
end
