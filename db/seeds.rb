# - Creates 5 delivery orders that contains 1-5 order_items (include the Meal)
Meal.destroy_all
Order.destroy_all
OrderItem.destroy_all

5.times do
  order = Order.create(
    order_id: "GO123",
    serving_datetime: DateTime.strptime("09/01/2009 17:00", "%m/%d/%Y %H:%M")
  )

  meal = Meal.create(
    name: "Buffalo Chicken on Sweet Potato Mash and Celery Confit",
    byline: "example",
    meal_code: "MEAL123"
  )

  order.order_items.create(
    meal_id: meal.id,
    quantity: 2,
    unit_price: 1000,
    delivery_order_id: 231

  )
  # item = OrderItem.create({
  #   quantity: 2,
  #   unit_price: 1000,
  #   meal_id: meal.id,
  # })
end



p "Created #{Order.count} orders"
