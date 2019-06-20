class UserVacationSerializer < ActiveModel::Serializer
  attributes :id, :vacation_id, :user_id
  has_one :user
  has_one :vacation
end
