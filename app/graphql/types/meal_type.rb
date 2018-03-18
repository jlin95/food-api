Types::MealType = GraphQL::ObjectType.define do
  name 'MealType'

  field :name, types.String, 'The name of the meal'
  field :meal_code, types.String, 'Meal code'
  field :byline, types.String, 'Byline'
  field :order_items, types[Types::OrderItemType], 'List of order items in the order'


end
