//
//  topic1.swift
//  SwordToOffer
//
//  Created by Gpf 郭 on 2022/3/27.
//

import Foundation
//剑指 Offer 14- I. 剪绳子
//剑指 Offer 14- II. 剪绳子 II
/**
 给你一根长度为 n 的绳子，请把绳子剪成整数长度的 m 段（m、n都是整数，n>1并且m>1），每段绳子的长度记为 k[0],k[1]...k[m-1] 。请问 k[0]*k[1]*...*k[m-1] 可能的最大乘积是多少？例如，当绳子的长度是8时，我们把它剪成长度分别为2、3、3的三段，此时得到的最大乘积是18。
 */

func cuttingRope(_ n:Int)->Int {
    if n < 4 {
        return n - 1
    }
    
    var timeOf3 = n / 3
    if n - timeOf3 * 3 == 1 {
        timeOf3 -= 1
    }
    let timeOf2 = (n - timeOf3 * 3) / 2
    
    return NSDecimalNumber.init(decimal: pow(3, timeOf3)).intValue * NSDecimalNumber.init(decimal: pow(2, timeOf2)).intValue
}

func cuttingRope1(_ n:Int)->Int {
    if n < 4 {
        return n - 1
    }
    var products = [Int](repeating: 0, count: n + 1)
    products[1] = 1
    products[2] = 2
    products[3] = 3
    for i in 4...n {
        var maxVal = 0
        for j in 1...i/2 {
            maxVal = max(maxVal, products[j] * products[i - j])
        }
        products[i] = maxVal
    }
    return products[n]
}
