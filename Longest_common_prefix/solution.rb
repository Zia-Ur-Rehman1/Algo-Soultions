def longest_common_prefix(strs)
  word = strs[0]
  match = []
  strs[1..-1].each do |str|
    str.chars.each_with_index do |char, index|
      if word[index] == char
        match << char
      else
        break
      end
    end
    word = match.join('')
    match.clear
  end
  word
end
