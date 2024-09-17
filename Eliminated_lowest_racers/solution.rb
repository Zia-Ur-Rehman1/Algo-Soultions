laps =[['zia 100', 'ali 200', 'usama 300', 'salman 1000', 'saeed 10'],
['zia 200', 'ali 500', 'usama 100', 'saeed 500', 'salman 10000'],
['zia 200', 'ali 500', 'usama 100', 'saeed 100']]
drivers = {}
eliminated= []
laps.each do |lap|
  lap.each do |lol|
    key, value = lol.split(" ")
    value = value.to_i
    if !eliminated.include?(key)
      if drivers[value]
        drivers[value] << " #{key}"
      else
        drivers[value]= key 
      end

    end
  end
  max_time = drivers.keys.max
  eliminated << drivers[max_time].split()
  eliminated=eliminated.flatten
  drivers.clear
end
puts eliminated
