message = "codesignal"
vowels = ["a",'e','i','o','u']
first =[]
second = ""
message.chars.each_with_index do |value, index|
  if vowels.include?(value)
    if first.size == 0
      first << index
      first << value
    elsif second.size==0
      message[index] = first.last
      second << value
    else
      message[index] = second
      second = value
    end
  end
end
message[first.first] = second.last
message (edited) 
