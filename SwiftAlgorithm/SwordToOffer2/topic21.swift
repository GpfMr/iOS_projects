//
//  topic1.swift
//  SwordToOffer
//
//  Created by Gpf 郭 on 2022/3/27.
//

import Foundation
//剑指 Offer 21. 调整数组顺序使奇数位
func isEven(_ v: Int)->Bool {
    return v & 1 == 0
}

// 21：调整数组顺序使奇数位于偶数前面
func exchangeNum(_ nums: inout [Int], _ isEven:(Int)->Bool) {
    var j = 0
    for i in 0..<nums.count {
        if isEven(j) {
            (nums[i], nums[j]) = (nums[j], nums[i])
            j += 1
        }
    }
}

func exchangeNum1(_ nums:inout [Int],_ isEven:(Int)->Bool) {
    var i = 0, j = nums.count - 1
    while true {
        if i >= j {
            return
        }
        if isEven(nums[i]) && !isEven(nums[j]) {
            (nums[i], nums[j]) = (nums[j], nums[i])
            i += 1
            j -= 1
            continue
        }
        
        if isEven(nums[i]) && isEven(nums[j]) {
            j -= 1
            continue
        }
        
        if !isEven(nums[i]) && isEven(nums[j]) {
            i += 1
            continue
        }
    }
}
