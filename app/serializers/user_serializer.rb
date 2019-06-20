class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :email_address, :events, :vacations
end
