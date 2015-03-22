def goodVsEvil(good, evil)
	goodArr = good.split(" ")
	evilArr = evil.split(" ")
	evilP, goodP, evilPoints, goodPoints = [1,2,2,2,3,5,10], [1,2,3,3,4,10], 0,0
  	goodArr.each_with_index.map { |val, idx| goodPoints = goodPoints.to_i + val.to_i*goodP[idx].to_i  	}
  	evilArr.each_with_index.map { |val, idx| evilPoints = evilPoints.to_i + val.to_i*evilP[idx].to_i 	}
  	return 'Battle Result: Good triumphs over Evil' if evilPoints < goodPoints
  	return 'Battle Result: Evil triumphs over Good' if goodPoints < evilPoints
  	return 'Battle Result: No victor on this battle field' if goodPoints == evilPoints
end

def number_to_ordinal(number)
  	return "0"  if number == 0
  	endings = [nil, "st", "nd", "rd"]
  	num_arr = number.to_s.split("")

  	if num_arr.size > 1
  		trailNumber = num_arr[num_arr.size-2].to_s + num_arr[num_arr.size-1].to_s
  		return number.to_s + 'th' if trailNumber.to_i >= 10 && trailNumber.to_i < 14 || trailNumber == "00"
  	end
  	return number.to_s + 'th' if num_arr[num_arr.size-1].to_i > 3
  	return number.to_s + endings[num_arr[num_arr.size-1].to_i].to_s if num_arr[num_arr.size-1].to_i <= 3

  # Finish me
end

def ho(string = nil)
	string == nil ? string = "Ho!" : string = "Ho " + string
end

puts ho(ho(ho(ho(ho(ho())))))


puts number_to_ordinal(5)
puts number_to_ordinal(10010100)
puts number_to_ordinal(12)
puts number_to_ordinal(2)
puts number_to_ordinal(1)