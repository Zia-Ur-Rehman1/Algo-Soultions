def is_valid(s)
  return false if s.length.odd?
  data = []
  s.chars.each do |e|
    if (e == ')' && data.last == "(") || (e == "]" && data.last == "[") || (e=="}" && data.last == "{")
      data.pop
    else
      data.push(e)
    end
  end
  data == []
end
