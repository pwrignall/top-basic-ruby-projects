def stock_picker(array)
    max_return = 0
    best_days = []

    array.each_with_index do |price1, idx1|
        array.each_with_index do |price2, idx2|
            if price2 - price1 > max_return && idx2 > idx1
                max_return = price2 - price1
                best_days[0] = idx1
                best_days[1] = idx2
            end
        end
    end
    
    best_days
end

p stock_picker([17,3,6,9,15,8,6,1,10])