//
//  topic1.swift
//  SwordToOffer
//
//  Created by Gpf 郭 on 2022/3/27.
//

import Foundation
// 剑指 Offer 32 - I. 从上到下打印二叉
//剑指 Offer 32 - II. 从上到下打印二
//剑指 Offer 32 - III. 从上到下打印二叉树 III

extension Tree {
    func levelOrder(_ root: TreeNode?) {
        guard root != nil else {
            return
        }
        var arr = [TreeNode]()
        arr.append(root!)
        while arr.isEmpty == false {
            let front = arr.first!
            arr.remove(at: 0)
            print(front.data as! Int)
            
            if front.l != nil {
                arr.append(front.l!)
            }
            if front.r != nil {
                arr.append(front.r!)
            }
        }
    }
    
}
