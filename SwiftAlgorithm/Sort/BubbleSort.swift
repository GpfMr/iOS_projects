//
//  BubbleSort.swift
//  Sort
//
//  Created by Gpf 郭 on 2022/3/9.
//

import Foundation

func bubbleSort(_ arr: inout [Int]) {
    let n = arr.count
//    var arr =  arr
    for i in 0..<n {
        for j in 0..<(n - i - 1) {
            if arr[j] > arr[j + 1] {
                (arr[j], arr[j + 1]) = (arr[j + 1], arr[j])
//                swap(&arr[j], &arr[j + 1])
            }
        }
    }
}

func bubbleSort1(_ arr: inout [Int]) {
    var n = arr.count;
    var swapped:Bool;
    repeat {
        swapped = false
        for i in 1..<n {
            if arr[i - 1] > arr[i] {
                (arr[i - 1], arr[i]) = (arr[i], arr[i - 1])
                swapped = true;
            }
        }
        n -= 1;
    } while(swapped)
    
    
    
}







