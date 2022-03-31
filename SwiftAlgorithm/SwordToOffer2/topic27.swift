//
//  topic1.swift
//  SwordToOffer
//
//  Created by Gpf 郭 on 2022/3/27.
//

import Foundation
//剑指 Offer 27. 二叉树的镜像

extension Tree {
    // 输出镜像
    // 从下向上交换节点
    func mirrorTree(_ root: TreeNode?) -> TreeNode?
    {
        guard let root = root else {
            return nil
        }
        
        let _ = mirrorTree(root.l)
        let _ = mirrorTree(root.r)
        (root.l, root.r) = (root.r, root.l)
        return root
    }
}
