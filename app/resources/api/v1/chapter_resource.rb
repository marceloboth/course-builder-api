class Api::V1::ChapterResource < JSONAPI::Resource
  attributes :title, :order

  has_one :course
  has_many :contents

  def self.default_sort
    [{field: 'order', direction: :asc}]
  end
end
