//
//  topic1.swift
//  SwordToOffer
//
//  Created by Gpf 郭 on 2022/3/27.
//

import Foundation
//剑指 Offer 16. 数值的整数次方
func myPow(_ x:Int, _ y:Int) -> Int
{
    if x == 0 {
        return 0
    }
    if y == 0 {
        return 1
    }
    
    var rel = 1
    for _ in 0..<y {
        rel = rel * x
    }
    return rel
}

func myPow1(_ x:Int, _ y:Int) -> Int
{
    if x == 0 {
        return 0
    }
    if y == 0 {
        return 1
    }
    var y = y
    var x = x
    // 如果指数小于0的时候则对基数进行取反转换为正数进行计算
    if y < 0 {
        x = 1 / x
        y = -y
    }
    var rel = 1
    while y > 0 {
        if (y & 1) == 1 {
            rel *= x
        }
        x *= x;
        y >>= 1
    }
    return rel
}
