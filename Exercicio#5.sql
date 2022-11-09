db.querycollection.find({"addresses.country": "Portugal"}, {name:1,age:1,salary:1,_id:0}).sort({age:-1}).limit(3)

db.querycollection.find({age: {$lt: 30}, $or: [{"addresses.country": "Espanha"},{salary: {$gt: 130000}}]},{name:1,"addresses.city":1,_id:0})
db.querycollection.find({$and: [{age: {$lt: 30}},{$or: [{"addresses.country": "Espanha"},{salary: {$gt: 130000}}]}]},{name:1,"addresses.city":1,_id:0})