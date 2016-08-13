json.array!(@orders) do |order|
  json.extract! order, :id, :date, :time, :from, :pax, :paid, :user
  json.url order_url(order, format: :json)
end
