class Api::V1::CourseResource < JSONAPI::Resource
  attributes :name, :subtitle, :description, :price, :duration

  has_many :chapters
end
