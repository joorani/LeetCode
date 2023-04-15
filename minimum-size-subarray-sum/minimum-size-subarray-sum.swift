class Solution {
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        var left = 0
        var sum = 0
        var minCnt = Int.max
        for i in 0..<nums.count {
            sum += nums[i]
            while sum >= target {
                minCnt = min(minCnt, i - left + 1)
                sum -= nums[left]
                left += 1
            }
        }
        return minCnt == Int.max ? 0 : minCnt
    }
}