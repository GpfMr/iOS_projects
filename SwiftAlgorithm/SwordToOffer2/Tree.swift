//
//  Tree.swift
//  SwordToOffer
//
//  Created by Gpf 郭 on 2022/3/21.
//

import Foundation
class TreeNode {
    var data:Any!
    var l: TreeNode?
    var r: TreeNode?
    
    init(_ data: Any, l: TreeNode?, r: TreeNode?) {
        self.data = data
        self.l = l
        self.r = r
    }
}

enum Direction {
case l
case r
}

func compare(_ root:TreeNode, _ node:TreeNode)->Bool
{
    let a = root.data as! Int
    let b = node.data as! Int
    if a >= b {
        return false
    }
    return true
}

class Tree {
    var root: TreeNode?
    var count: Int = 0
    // 插入数据
    func insert(_ root: TreeNode?,_ node: TreeNode,_ compare:(TreeNode, TreeNode)->Bool)  {
        guard self.root != nil else {
            self.root = node
            return
        }
        if compare(root!, node) == false {
            if root!.l == nil {
                root!.l = node
                return
            } else {
              insert(root!.l, node, compare)
            }
        } else {
            if root!.r == nil {
                root!.r = node
                return
            } else {
                insert(root!.r, node, compare)
            }
        }
        count += 1
    }
    
    func preOrderRead(_ root: TreeNode?) {
        if root == nil {
            return
        }
        print(root!.data as! Int)
        preOrderRead(root!.l)
        preOrderRead(root!.r)
    }
    
    // 判断节点是否相等
    func isEqual(_ node1: TreeNode, _ node2: TreeNode)-> Bool {
        let a = node1.data as! Int
        let b = node2.data as! Int
        if a == b {
            return true
        }
        return false
    }
    
}

