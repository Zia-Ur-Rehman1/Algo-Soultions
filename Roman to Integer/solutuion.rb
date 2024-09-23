def roman_to_int(s)
  hash ={
    I: 1,
    V: 5,
    X: 10,
    L: 50,
    C: 100,
    D: 500,
    M: 1000,
  }    
  length = s.size
  sum = 0
  i=0
  s= s.split('')
  while i < length
    if i+1 < length && hash[s[i].to_sym] < hash[s[i+1]&.to_sym]
      sum -= hash[s[i].to_sym] 
    else
      sum += hash[s[i].to_sym]
    end
    i +=1
  end
  sum
end
