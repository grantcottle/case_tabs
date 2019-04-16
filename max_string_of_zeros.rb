
def zeros_count(n)
    binary_number = n.to_s(2)
    binary_arr = binary_number.split('')

    count = 0

    result = 0

    (0..binary_arr.length).each do |i|
        if binary_arr[i] == "1"
            count = 0
        else
            count += 1
            result = [result, count].max
        end
    end
    result
end

n=1041
puts zeros_count(n)