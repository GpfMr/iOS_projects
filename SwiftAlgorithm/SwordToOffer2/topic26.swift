//
//  topic1.swift
//  SwordToOffer
//
//  Created by Gpf 郭 on 2022/3/27.
//

import Foundation
// 剑指 Offer 26. 树的子结构
extension Tree {
    // 判断是否为子树
    func childTree(_ root: TreeNode?, _ root1:TreeNode?) -> Bool {
        // 如果子树对比结束了没有节点了则全部相同
        guard root1 != nil else {
            return true
        }
        guard root != nil else {
            return false
        }
        
        if isEqual(root!, root1!) == true {
            return childTree(root!.r, root1!.r) && childTree(root!.l, root1!.l)
        } else {
            if compare(root!, root1!) == true {
                return childTree(root?.r, root1)
            } else {
                return childTree(root?.l, root1)
            }
        }
    }
}
