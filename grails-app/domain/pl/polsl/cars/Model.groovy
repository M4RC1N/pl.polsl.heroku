package pl.polsl.cars

class Model {

   String modelName
	Long id
	double engineCapacity
	double numberOfSeats
	double enginePerformance
	String type
	String fuelType
	static hasOne= [brand: Brand]
	
	static mapping = {
		table 'model'
		version false
			id column: 'model_id', generator: 'native', params:[sequence:'model_id_seq']
			modelName column: 'model_name'
			brand column: 'brand_id',  upcatable: false
			engineCapacity column: 'engine_capacity'
			numberOfSeats column: 'number_of_seats'
			enginePerformance column: 'engine_performance'
			type column: 'type'
			fuelType column:'fuel_type'
	}
	static constraints = {
		
		modelName nullable:true, blank:false,  validator: {value, object ->
                if (value==null) return 'modelName.null'
        }

		engineCapacity blank: false, nullable: false,  validator: {value, object ->
                if (value<1) return 'value.mustHigh0'
				if((value%1)!=0) return 'value.mustInteger'
        }
		numberOfSeats blank: false, nullable: false, validator: {value, object ->
                if (value<1) return 'value.mustHigh0'
				if((value%1)!=0) return 'value.mustInteger'
				if(value>99) return false
        }
				

		enginePerformance blank: false, nullable: false, validator: {value, object ->
                if (value<1) return 'value.mustHigh0'
				if((value%1)!=0) return 'value.mustInteger'
        }		
		type blank: false, nullable: false
		fuelType blank: false, nullable: false
	}
	public long getNumberOfModel() {
		Model.countByModel(this)
	}
	
}
