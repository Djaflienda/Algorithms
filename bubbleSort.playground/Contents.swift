import Foundation

var arraySort = [1, 112, 33, 4, 52, 6, 12, 43, 54, 11, 124, 543, 24234, 2342, 645, -68765, 345, 3346, 34563, -76, 765, -22345, 222, 5765, 3257, 2495, 3]

func sortArray(_ array: [Int]) -> [Int] {
    
    var sortedArray = array
    var variableToDefineARange = 1
    
    for _ in 0...array.count - 1 {
        guard variableToDefineARange < array.count else {break}
        
        for j in 0...(array.count - 1 - variableToDefineARange) {
            if sortedArray[j] > sortedArray[j + 1] {
                let tempMax = sortedArray[j]
                sortedArray[j] = sortedArray[j + 1]
                sortedArray[j + 1] = tempMax
            }
        }
        variableToDefineARange += 1
    }
    return sortedArray
}

print(sortArray(arraySort))
