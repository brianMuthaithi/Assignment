import numpy as np

#a normal array is similar to a list
arr = 1,2,3
print(sum(arr))

#create a multi-dimensional array
arr1 = np.array([[1,4,7],
                [2,4,6],
                [8,3,1]])
total = np.sum(arr1)
print(total)
