# input
# str = "{key:[[value_1, value_2],[value_3, value4]], 5:10:00AM]}"

# output
# h = {"key" => [["value_1", "value_2"],["value_3", "value4"]], 5=>"10:00AM"}


# things to consider:
# 1) unbalanced brackets
# 2) wrap keys and values in quotes 
# 3) replace colon with hash rockets

def string_to_hash(string)
    # remove unmatched bracket
    new_str = string.sub(/]}/,'}')
    # wrap time and variable names in quotation marks
    new_str.gsub!(/(\d{2}:\d{2}[AP]M|[a-z]+_?\d*)/, '"\1"')
    # convert `:` to hash rockets
    new_str.gsub!(/:(?!\d{2}[AP]M)/,'=>')

    hash = eval(new_str)
end


str = "{key:[[value_1, value_2],[value_3, value4]], 5:10:00AM]}"
puts string_to_hash(str)
