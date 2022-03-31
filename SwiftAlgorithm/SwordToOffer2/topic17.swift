//
//  topic1.swift
//  SwordToOffer
//
//  Created by Gpf 郭 on 2022/3/27.
//

import Foundation
//剑指 Offer 17. 打印从1到最大的n位

// 进行递加操作
func cAdd(_ num:inout [Character]) {
    var i = 0
    while true {
        var n = Int.init(num[i].description)
        if n == 9 {
            num[i] = "0"
            i += 1
        } else {
            n! += 1
            num[i] = Character.init(n!.description)
            return
        }
    }
}

func printNum(_ n: Int) {
    var num:[Character] = [Character](repeating: "0", count: n)
    while true {
        var touchNum = false
        var isLargest = true
        for j in (0..<num.count).reversed() {
            if num[j] != "0" {
                touchNum = true
            }
            if num[j] != "9" {
                isLargest = false
            }
            if touchNum {
                print(num[j], terminator: "")
            }
        }
        print(",", terminator: "")
        if isLargest {
            return
        }
        cAdd(&num)
    }
}

func printNum1(_ n: Int) {
    var nums = [Int](repeating: 0, count: n)
    var isEnd = false
    while isEnd == false {
        for (_, value) in nums.enumerated().reversed() {
            print(value, terminator: "")
        }
        for (index, value) in nums.enumerated() {
            if index == nums.count - 1 && value == 9 {
                isEnd = true
            }
            if value == 9 {
                nums[index] = 0
                continue
            } else {
                nums[index] += 1
                break
            }
        }
        print(" ", terminator: "")
    }
}


