//
//  topic1.swift
//  SwordToOffer
//
//  Created by Gpf 郭 on 2022/3/27.
//

import Foundation

// 查出重复数据
// 空间复杂度O(n)
func duplicate(_ num:[Int])->Int
{
    var set = Set<Int>()
    for i in 0..<num.count {
        if set.contains(num[i]) {
            return num[i]
        }
        set.insert(num[i])
    }
    return 0
}

// 空间复杂度O(1)
func duplicate1(_ num:[Int]) -> Int
{
    var num = num
    for i in 0..<num.count {
        if num[i] == i {
            continue
        } else {
            if num[num[i]] == num[i] {
                return num[i]
            } else {
                (num[i], num[num[i]]) = (num[num[i]], num[i])
            }
        }
    }
    return 0
}


