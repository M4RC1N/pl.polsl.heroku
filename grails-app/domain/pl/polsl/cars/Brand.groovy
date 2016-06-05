package pl.polsl.cars

class Brand {
    	static mapping = {
		table 'brand'
		version false
		columns{
			id column: 'brand_id'
			brandName column: 'brand_name'
			model column: 'model_id'
		}
	}
	String brandName
	static hasMany = [model:Model]
	
    static constraints = {
		brandName blank: false, nullable: false
    }
}
