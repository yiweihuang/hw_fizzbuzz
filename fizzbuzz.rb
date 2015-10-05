def fizzbuzz(num, &strategy)
	arr=[]
	(1..num).each{|i|
		if i%5 == 0 and i%3 == 0
			arr.push("FizzBuzz")
		elsif i%3 == 0
			arr.push("Fizz") 
		elsif i%5 == 0
			arr.push("Buzz")
		else
			arr.push(i)
		end
 	}

 	if strategy
 		arr.each{|i| yield i}
 	end
 	arr
end
