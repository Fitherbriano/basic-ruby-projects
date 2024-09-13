def substrings(str, words)
  downcase = str.downcase
  result = Hash.new(0)
  words.each do |substring|
    matches = downcase.scan(substring.downcase).length
    result[substring] = matches if matches>0
  end
  result
end

words = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
p substrings("Howdy partner, sit down! How's it going?", words)