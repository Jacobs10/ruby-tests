class Book

	def title()
	@title
	end

	def title=(title)
	@title=capitalize_input(title)
	end

	def capitalize_input(title)
	arr=["the","a","an","and","in","of"]
	result=[]
	x=title.split(" ")
		x.each_with_index do |x,i|
		x.capitalize! unless arr.include?(x) && i!=0
		result << x
		end
		return result.join(" ")
	end




end
