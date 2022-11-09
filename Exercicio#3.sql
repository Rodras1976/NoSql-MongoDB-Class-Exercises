db.exercice3cust.insertMany([{name:"Rodrigo Santos",age:45, birth_dt: new DATE ("1976-12-13"), "countries": [{"country": 1}]},
                         {name:"John Doe",age:33, birth_dt: new DATE ("1970-01-01"), "countries": [{"country": 2},{"country": 3}]},
						 {name:"Antonio Santos", age:40, birth_dt: new DATE ("2002-11-09"),  "countries": [{"country": 4}]}
						])
						
db.exercice3country.insertMany([{country:"Portugal",id:1},
                         {country:"USA",id:2},
						 {country:"England", id:3},
						 {country:"Brazil", id:4}
						])