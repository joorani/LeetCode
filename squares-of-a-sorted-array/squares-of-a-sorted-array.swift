class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        // return nums.map { $0 * $0 }.sorted()
        
        // two pointers
        var index = nums.count - 1
        var left = 0
        var right = nums.count - 1
        
        var resultNums = nums
        
        while index >= 0 {
            if abs(nums[left]) < abs(nums[right]) {
                resultNums[index] = nums[right] * nums[right]
                right -= 1
            } else {
                resultNums[index] = nums[left] * nums[left]
                left += 1
            }
            
            index -= 1
        }
        
        
        return resultNums
    }
}