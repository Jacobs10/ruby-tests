def echo(x)
	 x
end

def shout(x)
	x.upcase
end

def repeat(x,num=2)
	(x+" ")*(num-1)+x
end

def start_of_word(str,num)
  str[0..num-1]
end

def first_word(sentence)
	arr = sentence.split(" ")
	word = arr[0]
end

def titleize(sentence)
	little_words = ["and","over","the"]
	arr = sentence.split(" ")
	arr.each_with_index do |word,index|
	   word.capitalize! unless little_words.include?(word) && index !=0
  end
	arr.join(" ")
end
