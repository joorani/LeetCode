class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var count = 0
        var max = 0
        nums.forEach {
            if $0 == 1 {
                count += 1
            } else {
                if count != 0 {
                    max = count > max ? count : max
                    count = 0
                }
            }
        }
        max = count > max ? count : max

        return max
    }
}