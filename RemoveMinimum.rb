intArray = [5,2,4,1,3,1,8,9]
emptyArray = []

def removeSmallest(array)
  newArray=[]
  min = array.min
  minCount=0
  for i in 0..((array.length) -1)
    if array[i] == min && minCount <1
      minCount+=1
      array.delete_at(i)
    end
    if array[i] != nil
      newArray.push(array[i])
    end
  end
  return newArray
end
print removeSmallest(intArray)
