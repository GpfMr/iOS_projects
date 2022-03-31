//
//  topic1.swift
//  SwordToOffer
//
//  Created by Gpf 郭 on 2022/3/27.
//

import Foundation
//剑指 Offer 24. 反转链表

extension Link {
    // 头插法翻转链表
    func upSetLink() {
        if head == nil {
            return
        }
        
        var phead:Node? = nil
        var temp:Node? = nil
        var cur = head
        while cur != nil {
            // 和递归方式相比，该交换方法降低了方法运行的效率
            temp = cur!.next
            cur!.next = phead
            phead = cur
            cur = temp
        }
        head = phead
    }
    
    // 递归的方法翻转链表
    func reverseList(_ head: Node?) -> Node? {
        if head?.next == nil {
            return head
        }
        let ret = reverseList(head?.next)
        head?.next?.next = head
        head?.next = nil
        return ret
    }
}
