import Foundation

class NumArray {
    var prefixSums: [Int]

    init(_ nums: [Int]) {
        prefixSums = [0]

        for num in nums {
            prefixSums.append(prefixSums.last! + num)
        }
        
        print(prefixSums)
    }

    func sumRange(_ left: Int, _ right: Int) -> Int {
        return prefixSums[right+1] - prefixSums[left]
    }
}

let numArray = NumArray([-2, 0, 3, -5, 2, -1])
print(numArray.sumRange(0, 2))
print(numArray.sumRange(2, 5))
print(numArray.sumRange(0, 5))
