//
//  topic1.swift
//  SwordToOffer
//
//  Created by Gpf 郭 on 2022/3/27.
//

import Foundation
//剑指 Offer 04. 二维数组中的查找

// 二维数组查找
func findNumberIn2DArray(_ arr:[[Int]], _ target: Int)->[Int]
{
    var i = arr[0].count - 1, j = 0
    while i >= 0 && j < arr[0].count {
        if arr[i][j] > target {
            i -= 1;
        } else if (arr[i][j] < target) {
            j += 1
        } else {
            return [j, i]
        }
    }
    return [0]
}
