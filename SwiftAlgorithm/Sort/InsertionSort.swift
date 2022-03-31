//
//  InsertionSort.swift
//  Sort
//
//  Created by Gpf 郭 on 2022/3/9.
//

import Foundation

func insertionSort(_ arr: inout [Int]) {
    let n = arr.count
    for i in 0..<n {
        for j in (0..<i).reversed() {
            if arr[j] > arr[j + 1] {
                (arr[j], arr[j + 1]) = (arr[j + 1], arr[j])
            }
        }
    }
}

// 优化后的插入排序，省去了中间交换的步骤
func insertionSort1(_ arr: inout [Int]) {
    let n = arr.count
    for i in 0..<n {
        let temp = arr[i];
        for j in (0..<i).reversed() {
            if arr[j] > temp {
                arr[j + 1] = arr[j]
            } else {
                arr[j] = temp
                break
            }
        }
        
    }
}


