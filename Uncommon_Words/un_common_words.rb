def uncommon_from_sentences(s1, s2)
  array = (s1.split + s2.split).flatten
  dup = array.select{|element| array.count(element) > 1 }
  array - dup
end
