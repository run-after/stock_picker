def stock_picker(array)

    largest = 0
    smallest = 1000
    largest_index = 1
    smallest_index = 0

array.each_with_index { |small, small_index| 
    
    array.each_with_index { |large, large_index| 
        
    if small < smallest && small_index < largest_index
     
            smallest = small
            smallest_index = small_index
        #puts 'smallest = ' + smallest.to_s
        
    end
    if large > largest && large_index > smallest_index 
        
            largest = large
            largest_index = large_index
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