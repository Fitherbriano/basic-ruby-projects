def caesar(sentence, key)
  key = key.to_i  # Convert key to integer
  letters = sentence.split("")

  converted = letters.map do |letter|
    if letter.match?(/[[:alpha:]]/)
      base = letter.ord >= 97 ? 97 : 65  # 'a' or 'A'
      # Shift and wrap alphabetically
      (((letter.ord - base) + key) % 26 + base).chr
    else
      letter  # Non-alphabet characters stay unchanged
    end
  end

  result = converted.join
  puts result
end

puts 'Enter string:'
sentence = gets.chomp
puts 'Enter key:'
key = gets.chomp
caesar(sentence, key)