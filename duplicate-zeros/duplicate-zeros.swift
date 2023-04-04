import Foundation

class Solution {
    func duplicateZeros(_ arr: inout [Int]) {
        //기존 배열을 수정해라 -> 추가메모리 사용하지 마라.새로운 배열 만들지 말기
        
        guard !arr.isEmpty else { return }
        var index = 0
        while index < arr.count - 1 {
            if arr[index] == 0 {
                arr.removeLast()
                arr.insert(0, at: index)
                
                index += 2
            } else {
                index += 1
            }

        }
        
        
    }
}