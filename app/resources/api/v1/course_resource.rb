class Api::V1::CourseResource < JSONAPI::Resource
  attributes :name, :subtitle, :description, :price, :duration

  has_one :user
  has_many :chapters

  filter :user, apply: -> (records, value, _options) {
    records.where(user: value)
  }
end
