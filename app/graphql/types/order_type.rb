Types::OrderType = GraphQL::ObjectType.define do
  name 'OrderType'

  field :order_id, types.String, 'The ID of the order'
  field :serving_datetime, Types::DateTimeType, 'The date and time of the order'
  field :delivery_date, Types::DateTimeType, 'Date of order delivery' do
    resolve ->(obj, args, ctx) {
      obj.serving_datetime.to_date.to_s
    }
  end
  field :delivery_time, Types::DateTimeType, 'Time of order delivery' do
    resolve ->(obj, args, ctx) {
      obj.serving_datetime.strftime("%I:%M%p")
    }
  end

  field :order_items, types[Types::OrderItemType], 'List of order items in the order' 


end
