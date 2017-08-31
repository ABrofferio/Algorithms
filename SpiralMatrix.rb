spiral1 = [[1,2,3],[4,5,6],[7,8,9],[10,11,12],[13,14,15],[16,17,18]]
spiral2 = [[1,2,3,4,5],[6,7,8,9,10],[11,12,13,14,15],[16,17,18,19,20],[21,22,23,24,25],[26,27,28,29,30]]
spiral3 = [[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]]
def spiralMatrix(twoDArray)
  resultArray=[]
  vert=[]
  rows = twoDArray.length
  columns = twoDArray[0].length
  elements = rows * columns

  while resultArray.length <elements
    for i in twoDArray
      if i == twoDArray[0]
        for a in i
          resultArray.push(a)
        end
      else if i!=twoDArray[-1]
        resultArray.push(i[-1])
        vert.push(i[0])
        i.pop
        i.delete_at(0)
      else
        reverse_i=(i.length) -1
        for c in i
          resultArray.push(i[reverse_i])
          reverse_i -=1
        end
        if resultArray.length !=elements
          reverse_x=(vert.length) -1
          for x in vert
            resultArray.push(vert[reverse_x])
            reverse_x -=1
          end
        end
        vert=[]
        twoDArray.delete_at(0)
        twoDArray.pop
      end
    end
    end
  end
return resultArray
end

print (spiralMatrix(spiral2))
