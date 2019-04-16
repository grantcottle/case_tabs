
def zeros_count(n)
    # base case if n is zero or is a product of 2
    return 0 if n.equal?(0) || n.to_s(2).count('1').equal?(1)
    binary_number = n.to_s(2)
    binary_arr = binary_number.split('')

    current_max = 0
    previous_1 = 0
  
    binary_arr.each_with_index do |num, i|
        if num =="1"
            current_max = [current_max, i - previous_1-1].max
            previous_1 = i
        end
    end
    current_max
end

n=1041
puts zeros_count(n)