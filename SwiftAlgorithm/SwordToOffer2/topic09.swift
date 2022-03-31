//
//  topic1.swift
//  SwordToOffer
//
//  Created by Gpf 郭 on 2022/3/27.
//

import Foundation
//剑指 Offer 09. 用两个栈实现队列
class qNode {
    let val: Int
    init(_ v: Int) {
        val = v;
    }
};

class stack_queue {
    var size = 0
    let capticy: Int
    var stack1:stack<qNode>
    var stack2:stack<qNode>
    
public
    init(_ capticy: Int) {
        stack1 = stack.init(capticy)
        stack2 = stack.init(capticy)
        self.capticy = capticy
    }
    
    func isEmpty() -> Bool{
        return size == 0
    }
    
    func pop()-> qNode? {
        while stack1.isEmpty() && stack2.isEmpty() {
            return nil
        }
        while !stack1.isEmpty() {
            stack2.push(stack1.pop())
        }
        
        let rel = stack2.pop()
        size-=1
        return rel
    }
    
    func push(_ n: qNode) {
        assert(size <= capticy)
        while !stack2.isEmpty() {
            stack1.push(stack2.pop())
        }
        stack1.push(n)
        size+=1
    }
}

