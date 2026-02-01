def find_largest(arr)
return nil if arr.empty?

largest = arr.first
arr.each do |num|
	largest = num if largest <  num 
end

largest
end


def find_dup(arr)
	arr.group_by {|x| x}.select{ |k, v| v.length > 1}.keys
end

def remove_dup(arr)
	result = []
	seen = {}
	arr.each do |num|
		unless seen[num]
			result << num
			seen[num] = true
		end
	end
puts seen.inspect
result
end


def second_lar(arr)
	top = arr.max
	
	arr.each do |num|
		sec = num if num < top && num > sec
	end
	sec
end
