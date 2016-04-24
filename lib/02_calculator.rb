def add(x,y)
	sum=x+y
end

def subtract(x,y)
	diff=x-y
end

def sum(arr)
  arr.empty? ? 0 : arr.reduce{|a,b|a+b}
end


def multiply(nums)
  result=1
	nums.each do |x|
		result*=x
	end
	result
end


def  power(x,y)
	x**y
end


def factorial(x)
	if x==0||x==1
		return 1
	else
		x*factorial(x-1)
	end
end
