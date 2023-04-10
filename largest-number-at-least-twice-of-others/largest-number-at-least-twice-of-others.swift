class Solution {
    func dominantIndex(_ nums: [Int]) -> Int {
        //가장 큰 수 찾고 요소돌면서 큰 수가 2배 이상 큰 지 확인
        var maxIndex = 0
        if let max = nums.max() {
           maxIndex = nums.firstIndex(of: max)!
       }
        
        for i in 0..<nums.count {
            if i != maxIndex, nums[i] * 2 > nums[maxIndex] {
                return -1
            }
        }
        return maxIndex
    }
}