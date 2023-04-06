class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        
        var copyArr = arr
        var maxValue = -1
        copyArr[arr.count - 1] = -1
        
        for i in (1..<arr.count).reversed() {
            maxValue = max(maxValue, arr[i])
            copyArr[i-1] = maxValue
        }
        
        return copyArr
    }
}