class Solution {
    func reverseWords(_ s: String) -> String {
        let res = s.split(separator: " ").map { $0.reversed() }.joined(separator: " ")
        return String(res)
    }
}