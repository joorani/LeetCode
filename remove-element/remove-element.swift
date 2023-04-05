
class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var begin: Int = 0
        for i in 0..<nums.count {
            if nums[i] != val {
                nums[begin] = nums[i]
                begin += 1
            }
        }

        return begin
    }
}