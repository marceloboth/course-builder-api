class Api::V1::ChapterResource < JSONAPI::Resource
  attributes :title, :order

  has_one :course
end
