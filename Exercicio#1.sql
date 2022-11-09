db.exercice1.insertMany([{name:"João Santos",age:45},
                         {name:"John Doe",age2:"33"},
						 {name:"Antonio Santos", age3:40.5}
						])

db.exercice1.aggregate([
  { $addFields: { age_type: { $type: "$age" }}},
  { $addFields: { age2_type: { $type: "$age2" }}},
  { $addFields: { age3_type: { $type: "$age3" }}}
])

db.createCollection("exe1withval",{
	validator: { 
		$jsonSchema: {
			bsonType: "object",
         	title: "Exercise 1 Object Validation",
         	required: ["name"],
         	properties: { 
				name: {
            	   	bsonType: "string",
               		description: "'name' must be a string and is required"
            	},
            	age: {
               		bsonType: "int",
               		description: "'age' must be an integer in and is required"
            	}
			}
		}
	}
})