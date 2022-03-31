//
//  Link.swift
//  SwordToOffer
//
//  Created by Gpf 郭 on 2022/3/10.
//

import Foundation

class Node {
    var data: Int;
    var next:Node?
    init(_ v: Int) {
        data = v
        next = nil
    }
}

class Link {
    var head: Node?
    var end: Node?
    var count: Int = 0
    
    func insertNode(_ t: Int) {
        guard let _ = head else {
            self.head = Node(t)
            self.end = self.head
            count+=1
            return
        }
        self.end!.next = Node(t)
        self.end = self.end!.next
        count+=1
    }
    
    func insert(_ n: Node) {
        guard let _ = head else {
            self.head = n
            self.end = self.head
            count+=1
            return
        }
        self.end!.next = n
        self.end = self.end!.next
        count+=1
    }
    
    func deleteNode(_ t: Int) {
        guard let _ = head else {
            print("链表为空,没有要删除的内容")
            return
        }
        guard head!.data != t else {
            head = head!.next
            return
        }
        var n = head
        while n!.next != nil {
            if (n!.next)!.data == t {
                n!.next = (n!.next)?.next
            } else {
                n = n!.next
            }
        }
    }
    
    
    func callReverseList(_ head: Node?) {
        let startTime = CFAbsoluteTimeGetCurrent();
        let _ = reverseList(head)
        let endTime = CFAbsoluteTimeGetCurrent()
        
        print("排序时间:\(endTime - startTime)秒")
    }
    
    // 反向输出链表
    func reverseLog() {
        guard let _ = head else {
            print("链表为空")
            return
        }
        typealias t = Node
        var stack = stack<Node>(count)
        var n = head
        while n != nil {
            stack.push(n!)
            n = n!.next
        }
        while !stack.isEmpty() {
            let n:Node = stack.pop()
            print(n.data)
        }
    }
    
    // 是否存在环
    func isExistCircle(_ node: Node?) -> Bool {
        guard let _ = head else {
            return false
        }
        var fast: Node?
        var slow: Node?
        let pn = Node(0)
        pn.next = head
        fast = head
        slow = pn
        while slow != nil {
            if slow === fast {
                return true
            }
            slow = slow?.next
            fast = fast?.next?.next
        }
        return false
    }
    
    // 输出倒数第n个元素/ 删除倒数第n个节点同理
    func logLastNValue(_ l: Node?, _ n: Int) {
        guard let _ = head else {
            return
        }
        var sl = head
        var fast = head
        var stap = 0
        while fast != nil {
            if stap < n {
                fast = fast?.next
                stap += 1
            }
            if stap == n {
                fast = fast?.next
                sl = sl?.next
            }
        }
        if stap < 0 {
            print("链表长度小于n")
            return
        }
        print(sl!.data as Int)
    }
    
    func mergeCompare(_ l1:Node, _ l2:Node)->Bool
    {
        
        return true
    }
    
    // 将两个链表的数值相加
    func addTwoListsNum(_ l1: Node?, _ l2: Node?)->Node?
    {
        guard l1 != nil else {
            return l2
        }
        guard l2 != nil else {
            return l1
        }
        var l1 = l1
        var l2 = l2
        let phead = Node.init(0)
        var end = phead
        var v1 = 0, v2 = 0, temp:Int = 0
        while l1 != nil || l2 != nil {
            if l1 != nil {
                v1 = l1!.data
            } else {
                v1 = 0
            }
            
            if l2 != nil {
                v2 = l2!.data
            } else {
                v2 = 0
            }
            end.next = Node.init((temp + v1 + v2) % 10)
            end = end.next!
            
            temp = Int(ceil(Double((v1 + v2)) / 10.0))
            l1 = l1?.next
            l2 = l2?.next
        }
        
        if temp != 0 {
            end.next = Node.init(temp)
            end = end.next!
        }
        
        return phead.next
    }
    
    // 剑指 Offer 52. 两个链表的第一个公共节点
    /**
     方法一：将节点依次放入Set中，每次放入前进行判断是否已经存在
     方法二：双指针法
     */
    func getIntersectionNode(_ l1: Node?, _ l2: Node?) -> Node?
    {
        guard l1 != nil else{
            return nil
        }
        guard l2 != nil else {
            return nil
        }
        var p1 = l1, p2 = l2
        
        while p1 != nil || p2 != nil {
            if p1 === p2 {
                return p1
            }
            p1 = p1?.next
            p2 = p2?.next
            
            if p1 == nil {
                p1 = l2
            }
            if p2 == nil {
                p2 = l1
            }
        }
        return nil
    }
    
    
    
}



