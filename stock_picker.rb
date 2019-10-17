def stock_picker(array)

    largest = 0
    smallest = 1000
    largest_index = 1
    smallest_index = 0

array.each { |small| 
    
    array.each { |large| 
        
    if small < smallest && array.index(small) < largest_index
     
            smallest = small
            smallest_index = array.index(small)
        #puts 'smallest = ' + smallest.to_s
        
    end
    if large > largest && array.index(large) > smallest_index 
        
            largest = large
            largest_index = array.index(large)
        #puts "largest = " + largest.to_s
    end
        

        }
    }

     [smallest_index, largest_index]

end
 p stock_picker([17,3,6,9,15,8,6,1,10])
 p stock_picker([4,6,9,34,28,12,2,16,8,44])
 p stock_picker([8, 5, 3, 6 ,8, 56, 43, 76, 54, 9])
 p stock_picker([6, 2, 7, 3, 1, 7, 3, 8, 4, 9])
 p stock_picker([99, 88, 77, 66, 55, 44, 33, 22, 11, 99])