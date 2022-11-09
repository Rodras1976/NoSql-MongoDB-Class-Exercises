db.createView(
  "querycollection_age_v",
  "querycollection",
  [{$match: {age: {$lte: 45}}},
  {$project: {_id:0, name:1, age:1}}]
)

db.createView(
  "querymerge_v",
  "customer",
  [{$lookup: {
	from: "addresses",
	localField: "id",
	foreignField: "cust_id",
	as: "custaddr"}},
  {$project: {_id:0, name:1, age:1, street: "$custaddr.street", city: "$custaddr.city"}}]
)
