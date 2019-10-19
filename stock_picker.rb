def stock_picker(array)

    hash = Hash.new

array.each_with_index { |buy, buy_index| 
    
    array.each_with_index { |sell, sell_index| 
        
        if sell_index > buy_index
            total = sell - buy
            
            hash[[buy_index, sell_index]] = total
    
        end
        }
    }

     hash.key(hash.values.max)

end
 p stock_picker([17,3,6,9,15,8,6,1,10])
 p stock_picker([4,6,9,34,28,12,2,16,8,44])
 p stock_picker([8, 5, 3, 6 ,8, 56, 43, 76, 54, 9])
 p stock_picker([6, 2, 7, 3, 1, 7, 3, 8, 4, 9])
 p stock_picker([99, 88, 77, 66, 55, 44, 33, 22, 11, 99])
 p stock_picker([80, 99, 3,4,7,10])