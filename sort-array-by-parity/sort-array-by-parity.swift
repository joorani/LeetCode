class Solution {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
       var arr = nums
        
        var index = 0
        for i in 0..<nums.count {
            if arr[i] % 2 == 0 {
                arr.swapAt(i, index)
                index += 1
            }
        }
        
        return arr
    }
}