class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        //슬라이딩 윈도우
        var arr = Array(haystack)
        var needleCount = needle.count
        var hayCount = haystack.count
        
        if hayCount < needleCount {
            return -1
        }
        
        for windowStart in 0...(hayCount - needleCount) {
            for i in 0..<needleCount {
                if needle[needle.index(needle.startIndex, offsetBy: i)] != haystack[haystack.index(haystack.startIndex, offsetBy: windowStart + i )] {
                    break
                }
                //needle 마지막 값 확인
                if i == needleCount - 1 {
                    return windowStart
                }
            }
        }
        return -1
    }
}