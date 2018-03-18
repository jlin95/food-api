Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :orders, types[Types::OrderType] do
    description 'Retrieve a list of all orders'

    resolve ->(obj, args, ctx) {
      Order.all
    }
  end
  field :order_items, types[Types::OrderItemType] do
    description 'Retrieve a list of all order items'

    resolve ->(obj, args, ctx) {
      OrderItem.all
    }
  end
end
