//
//  topic1.swift
//  SwordToOffer
//
//  Created by Gpf 郭 on 2022/3/27.
//

import Foundation
//剑指 Offer 10- I. 斐波那契数列
//剑指 Offer 10- II. 青蛙跳台阶问题

func fib(_ n: Int) -> Int {
    if n == 0 {
        return 0
    }
    if n == 1 {
        return 1
    }
    var rep1 = 0
    var rep2 = 1
    var rel = 0
    for i in 2...n {
        rel = (rep1 + rep2) % 1000000007
        rep1 = rep2
        rep2 = rel;
    }
    return rel
}

//剑指 Offer 10- II. 青蛙跳台阶问题
func numWays(_ n: Int) -> Int {
    if n == 0 {
        return 0
    }
    if n == 1 {
        return 1
    }
    var rep1 = 0
    var rep2 = 1
    var rel = 0
    for i in 2...n {
        rel = (rep1 + rep2) % 1000000007
        rep1 = rep2
        rep2 = rel;
    }
    return rel
}
