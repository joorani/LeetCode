class Solution {
    func findNumbers(_ nums: [Int]) -> Int {
        //자리수가 짝수인 number 찾기
        //숫자의 자리수를 세려면? -> String으로 변환
        var count = 0
        count = nums.filter { String($0).count % 2 == 0}.count
        return count
    }
}