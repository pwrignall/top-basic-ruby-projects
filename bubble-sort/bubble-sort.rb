def bubble_sort(array)
    sorted = false
    until sorted == true do
        swaps = 0
        array.each_index do |i|
            break if i + 1 == array.length
            if array[i] > array[i+1]
                array.insert(i, array.delete_at(i+1))
                swaps += 1
            end
        end
        sorted = true if swaps == 0
    end
    array
end

p bubble_sort([4,3,78,2,0,2])