db.querycollection.updateOne({"name": "Vanessa Luz"},{$set: {"name": "Vanessa Escuro"}})

db.querycollection.updateMany({"addresses.city": "Lisboa"},{$set: {"addresses.$.city": "Lisbon"}})