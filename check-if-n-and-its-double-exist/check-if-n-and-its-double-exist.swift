class Solution {
    func checkIfExist(_ arr: [Int]) -> Bool {
        for i in 0..<arr.count - 1 {
            for j in i+1..<arr.count {
                if arr[i] == 2 * arr[j] || arr[j] == 2 * arr[i] {
                    return true
                }
            }
        }
        return false
    }
}

