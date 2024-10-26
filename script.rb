def bubble_sort(arr)
  sorted = arr

  until sorted.each_cons(2).all? { |first, second| first <= second } do
    p "Bubble sorting:"
    p "Current arr: #{sorted}"
    i = 0
    while i < arr.length - 1
      p "Compare #{[sorted[i], sorted[i + 1]]}"
      if sorted[i] > sorted[i + 1]
        temp = sorted[i]
        sorted[i] = sorted[i + 1]
        sorted[i + 1] = temp
        p "Sorts"
      else
        p "Remains"
        sorted[i]
      end
      p "=> #{sorted}"
      i += 1
    end
    p "End of current iterating"
    puts "\n"
  end
  p "Complete bubble sort"
end

bubble_sort([4,3,78,2,0,2])