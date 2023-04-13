class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
         guard !strs[0].isEmpty else {
            return ""
        }
    
        var minStr = strs.min() ?? ""
        for str in strs {
            while !str.hasPrefix(minStr) {
                minStr.removeLast()
            }
        }
        return minStr
    }
}

extension String {
    subscript (_ index: Int) -> Character {
        return self[self.index(self.startIndex, offsetBy: index)]
    }
}