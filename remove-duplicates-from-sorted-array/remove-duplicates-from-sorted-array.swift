class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
     var point = 1
        if nums.count < 2 {
            return nums.count
        }
        
        
        var item = nums[0]
        for i in 1..<nums.count {
            if nums[i] != item {
                item = nums[i]
                nums[point] = item
                point += 1
            }
        }
        return point
    }
}