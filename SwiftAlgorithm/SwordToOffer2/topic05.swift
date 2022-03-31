//
//  topic1.swift
//  SwordToOffer
//
//  Created by Gpf 郭 on 2022/3/27.
//

import Foundation
//剑指 Offer 05. 替换空格

// 倒叙插入，正序插入需要维持空格位的改变
func replaceBlank(_ s: [Character])-> [Character]
{
    var n = 0
    for i in s {
        if i == " "{
            n += 1
        }
    }
    var len = n * 2 + s.count
    var myChar = [Character](repeating: " ", count: len)
    for i in s.reversed() {
        if i == " " {
            myChar[len - 1] = "0"
            len -= 1
            myChar[len - 1] = "2"
            len -= 1
            myChar[len - 1] = "%"
            len -= 1
        }else {
            myChar[len - 1] = i
            len -= 1
        }
    }
    return myChar
}

func replaceSpace(_ s: String) -> String {
    var str = ""
   let _ = s.map {
        if $0 == " " {
            str.append("%20")
        } else {
            str.append($0)
        }
    }

    return str
}
