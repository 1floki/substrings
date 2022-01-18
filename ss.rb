dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


input_string = "Howdy partner, sit down! How's it going?".downcase

def substring(str, dict)
  dict.reduce(Hash.new(0)) do |hash, dict_item|
    unless str.scan(dict_item).length == 0
          hash[dict_item] = str.scan(dict_item).length
    end
    hash
  end
end


p substring(input_string, dictionary)
