//
//  topic1.swift
//  SwordToOffer
//
//  Created by Gpf 郭 on 2022/3/27.
//

import Foundation
//剑指 Offer 15. 二进制中1的个数
/**
 编写一个函数，输入是一个无符号整数（以二进制串的形式），返回其二进制表达式中数字位数为 '1' 的个数（也被称为 汉明重量).）。
 */

/**
 进制表示
 0x   16进制
 0o     8进制
 0b     2进制
 十进制无前缀
 */

func Numberof1(_ n: Int)->Int
{
    var count = 0
    var flag = 1
    while flag != 0 {
        if (n & flag) != 0 {
            count+=1
        }
        flag = flag<<1
    }
    return count
}
