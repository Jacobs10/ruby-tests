class Dictionary
  attr_accessor :entries
  def initialize
    @entries = {}
  end

  def add(x)
  		if x.is_a?(String)
  			@entries[x]=nil
  		else
  			x.each do |key,value|
  			@entries[key]= value
  			end
  		end
  	end

  	def keywords
  		@entries.keys.sort
  	end

    def include?(key)
      @entries.keys.include?(key) ? true : false
    end

    def find(x)
      answer={}
    @entries.each do |key,value|
      if /#{x}/.match(key)
        answer[key]=value
      end
    end
      answer
    end

    def printable
	     @entries.sort.map{|key,value| "[#{key}] \"#{value}\""}.join("\n")
	  end

end
