Types::OrderItemType = GraphQL::ObjectType.define do
  name 'OrderItemType'

  field :delivery_order_id, types.Int, 'The ID of the delivery order item in the order'
  field :meal_id, types.Int, 'The ID of the meal'
  field :quantity, types.Int, 'Quantity'
  field :unit_price, types.Int, 'Price of each meal'

  field :order, Types::OrderType, 'The order of which this order item is under'
  field :meal, Types::MealType, 'The meal that this order item is tagged to' do
    resolve -> (obj, args, ctx) { obj.meal }

  end
end
