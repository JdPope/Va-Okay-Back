class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :amount, :category, :date_of_event, :vacation_id, :user_id
end
