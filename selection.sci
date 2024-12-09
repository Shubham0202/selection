function sorted = selectionSort(arr)
    n = length(arr);
    for i = 1:n-1
        minIndex = i; // Assume the first unsorted element is the smallest
        for j = i+1:n
            if arr(j) < arr(minIndex) then
                minIndex = j; // Update the index of the smallest element
            end
        end
        // Swap the smallest element with the first unsorted element
        temp = arr(i);
        arr(i) = arr(minIndex);
        arr(minIndex) = temp;
    end
    sorted = arr; // Return the sorted array
end

// Main Program
clc;
disp("Selection Sort Algorithm");

n = input("Enter the size of the array (n): ");
randomArray = grand(1, n, "uin", 1, 100); // Generate random array
disp("Generated Array: " + string(randomArray));

sortedArray = selectionSort(randomArray); // Perform selection sort
disp(sortedArray);

