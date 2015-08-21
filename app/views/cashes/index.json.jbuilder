json.array!(@cashes) do |cash|
  json.extract! cash, :id, :member_id, :balance
  json.url cash_url(cash, format: :json)
end
