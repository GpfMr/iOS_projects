//
//  topic1.swift
//  SwordToOffer
//
//  Created by Gpf 郭 on 2022/3/27.
//

import Foundation
//剑指 Offer 06. 从尾到头打印链表

extension Link {
    func logLink() {
        guard let _ = head else {
            print("链表为空")
            return
        }
        var n = head
        while n != nil {
            print(n!.data)
            n = n!.next
        }
    }
}
