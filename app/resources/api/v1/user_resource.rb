class Api::V1::UserResource < JSONAPI::Resource
  attributes :username, :password, :password_confirmation

  has_many :courses
end
