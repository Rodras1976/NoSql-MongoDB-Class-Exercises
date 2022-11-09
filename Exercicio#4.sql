db.querycollection.find({name: "João Raimundo"})
db.querycollection.find({name: {$eq: "João Raimundo"}})

db.querycollection.find({"addresses.country": "Espanha"})

db.querycollection.find({team: 'OMI','addresses.city': 'Lisboa'})
db.querycollection.find({$and: [{team: 'OMI'},{'addresses.city': 'Lisboa'}]})

db.querycollection.find({age: {$gt: 24}, $or: [{"addresses.country": "Espanha"},{salary: {$gt: 130000}}]})
db.querycollection.find({$and: [{age: {$gt: 24}},{$or: [{"addresses.country": "Espanha"},{salary: {$gt: 130000}}]}]})
