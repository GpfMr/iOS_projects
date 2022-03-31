//
//  SelectionSort.swift
//  Sort
//
//  Created by Gpf 郭 on 2022/3/9.
//

import Foundation

func selectionSort(_ arr: inout [Int]) {
    let n = arr.count
    for i in 0..<n {
        var minIndex = i
        for j in i+1..<n {
            if arr[j] < arr[minIndex] {
                minIndex = j
            }
        }
        (arr[i], arr[minIndex]) = (arr[minIndex], arr[i])
    }
}









