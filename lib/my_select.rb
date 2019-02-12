nums = [1, 2, 3, 4, 5]

def my_select(nums)
  if block_given?
    i = 0
    new_array = Array.new
    
    while i < nums.length
      new_array << yield(nums[i])
      i += 1
    end
    
    new_array
  else
    "No block given"
  end
end
    
    
my_select(nums) do |num|
  num.even?
end
  