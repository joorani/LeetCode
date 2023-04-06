class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        //원소가 1개인 경우

        var point = 0
        for i in 0..<nums.count {
            if nums[i] != 0 {
                nums[point] = nums[i]
                point += 1
            }
        }
        print(point)
        for i in point..<nums.count {
            nums[i] = 0
        }

    }
}