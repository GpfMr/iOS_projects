//
//  topic1.swift
//  SwordToOffer
//
//  Created by Gpf 郭 on 2022/3/27.
//

import Foundation
//剑指 Offer 25. 合并两个排序的链表
extension Link {
    // 合并两个有序链表
    func mergeTowLists(_ l1: Node?, _ l2: Node?, _ mergeCompare:(Node, Node)->Bool) -> Node?
    {
        guard l1 != nil else {
            return l2
        }
        guard l2 != nil else {
            return l1
        }
        var l1 = l1
        var l2 = l2
        var temp: Node
        let ph = Node.init(0)
        var end = ph
        while l1 != nil && l2 != nil {
            if mergeCompare(l1!, l2!) == true {
                temp = l1!
                l1 = l1?.next
            } else {
                temp = l2!
                l2 = l2?.next
            }
            end.next = temp
            end = end.next!
        }
        end.next = l1 == nil ? l2:l1
        return ph.next
    }
}
