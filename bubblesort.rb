
def bubble_sort(array)
elem_at_previous_position="nonexistent"

    (array.length-1).times {|i| array.each_with_index do |elem_at_current_position, index| 
      p array
        p "looking at #{elem_at_current_position} at pos #{index}.  elem_at_previous_position is #{elem_at_previous_position}"
        if index == 0
            elem_at_previous_position="nonexistent"
            p " elem_at_current_position nonexistent. #{elem_at_previous_position} is now #{elem_at_current_position}"
            elem_at_previous_position = elem_at_current_position
            next
        end
        elem_at_previous_position=array[index-1]
        p "comparing #{elem_at_previous_position} (previous) and #{elem_at_current_position} (current)"
        #take elem_at_current_position
        if elem_at_current_position<elem_at_previous_position
            p "#{elem_at_current_position} found smaller than #{elem_at_previous_position}. Switching"
            array[index]=elem_at_previous_position
            array[index-1]= elem_at_current_position
            
        else p "#{elem_at_current_position} > #{elem_at_previous_position}"
            
        end
        elem_at_previous_position=array[index-1]
        
    end }
end

p bubble_sort([4,3,78,2,0,2])
# =>[0, 2, 2, 3, 4, 78]