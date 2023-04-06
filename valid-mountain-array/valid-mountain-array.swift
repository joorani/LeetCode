class Solution {
    func validMountainArray(_ arr: [Int]) -> Bool {

        var increase = true
        
        for i in 0..<arr.count - 1 {
            if increase {
                if arr[i] == arr[i+1] {
                    return false
                } else if arr[i] > arr[i+1] {
                    //시작시점일 때
                    if i < 1 {
                        return false
                    }
                    increase = false
                }
            } else {
                if arr[i] <= arr[i+1] {
                    return false
                }
            }
        }
        return increase ? false : true
    }
}