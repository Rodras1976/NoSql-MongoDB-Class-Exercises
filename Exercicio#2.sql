db.exercice2.insertMany([{name:"Rodrigo Santos",age:45, birth_dt: new DATE ("1976-12-13"), addresses: [{street: 'Rua 1', city: 'Montijo', country: 'Portugal'} ,{street: 'Av 2', city: 'Porto', country: 'Portugal'}]},
                         {name:"John Doe",age:33, birth_dt: new DATE ("1970-01-01"), addresses: [{street: 'Street 2', city: 'New York', country: 'USA'}]},
						 {name:"Antonio Santos", age:40, birth_dt: new DATE ("2002-11-09"),  addresses: [{street: 'Av 1', city: 'Lisboa', country: 'Portugal'}]}
						])

db.testdates.insertOne({
date1:01/01/2000,
date2:"01/01/2000",
date3: new Date('2000-01-01'),
date4: new Date('2000-01-01 14:30:00'),
date5: new ISODate('2000-01-01T14:30:00Z'),
date6: new Timestamp(),
date7:{$lt: new Date('2000-01-01')}})

db.testdates.aggregate([
  { $addFields: { date1_type: { $type: "$date1" }}},
  { $addFields: { date2_type: { $type: "$date2" }}},
  { $addFields: { date3_type: { $type: "$date3" }}},
  { $addFields: { date4_type: { $type: "$date4" }}},
  { $addFields: { date5_type: { $type: "$date5" }}},
  { $addFields: { date6_type: { $type: "$date6" }}},
  { $addFields: { date7_type: { $type: "$date7" }}}
])