package pl.polsl.cars

class ActionController {

    def index() { }
	def brandCars (String brandName)
	{

		Brand currentBrand = Brand.findByBrandName(brandName)
		params.max = 5
		int oro
		if(params.offset!=null)
		{
		 oro= params.offset as int
		}
		else
		{
			oro=0
		}
		Model modeee = Model.findByBrand(currentBrand)
		/*Brand brand = Brand.get(currentBrand.id)
		params.order= 'desc'*/
	
		[models:Model.findAllByBrand(currentBrand, params),
			 currBrand:currentBrand, numberOfModels:Model.countByBrand(currentBrand), j:oro]
	}
	
	def addModel(Long brandId)
	{
		Model model = new Model()
		
		Brand currentBrand = Brand.get(brandId)
		[currBrand:currentBrand,
			model:model]
	}
	
	def save(Long brandId, Model model)
	{
		Brand currentBrand = Brand.get(model.brand.id)
		if(model.hasErrors()||!model.save(failOnError:true))
		{
			
			render(view:"/action/addModel", model:[model:model, currBrand:currentBrand])
			return
		
		}
	
		
			redirect(action: "brandCars", params: [brandName: currentBrand.brandName])

	}
	
	def modifyModel(Long modelId)
	{
		Model model = Model.get(modelId)
		Brand currentBrand = Brand.get(model.brand.id)
		
		[model:model, currBrand:currentBrand]
	}
	
	def confirmModify(Long brandId, Model model)
	{
		
		Brand currentBrand = Brand.get(model.brand.id)
		if(!model.save(flush: true))
		{
			
			render(view:"/action/modifyModel", model:[model:model,
			 currBrand:currentBrand])
			return
		}
		redirect(action: "brandCars", params: [brandName: currentBrand.brandName])
	}
	
	def removeModel(Long modelId)
	{
		Model model = Model.get(modelId)
		Brand currentBrand = Brand.get(model.brand.id)
		model.delete(flush: true)
		
	
		redirect(action: "brandCars", params: [brandName: currentBrand.brandName])
		
	}
	
	
	
	
	
}
