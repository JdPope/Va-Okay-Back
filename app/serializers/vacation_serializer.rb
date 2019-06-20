class VacationSerializer < ActiveModel::Serializer
  attributes :id, :name, :payment_required, :date_range, :events

end
