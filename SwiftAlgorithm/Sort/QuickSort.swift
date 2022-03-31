//
//  QuickSort.swift
//  Sort
//
//  Created by Gpf 郭 on 2022/3/9.
//

import Foundation

/**
 正常的对比模式，进行数组内划分
 */
func partition(_ arr: inout [Int], l: Int, r: Int) -> Int
{
    (arr[l], arr[int_random(begin: l, end: r)]) = (arr[int_random(begin: l, end: r)], arr[l])
    
    let v = arr[l]
    var j = l
    for i in l+1...r {
        if arr[i] < v {
            j += 1
            (arr[i], arr[j]) = (arr[j], arr[i])
        }
    }
    (arr[l], arr[j]) = (arr[j], arr[l])
    return j
}

func partitionDoubleIndex(_ arr: inout [Int], l: Int, r: Int) -> Int
{
    (arr[l], arr[int_random(begin: l, end: r)]) = (arr[int_random(begin: l, end: r)], arr[l])
    let v = arr[l];
    var i = l + 1, j = r;
    while true {
        while (i <= r && arr[i] < v) {
            i+=1
        }
        while (j >= l + 1 && arr[j] > v) {
            j-=1;
        }
        if i > j {
            break
        }
        (arr[j], arr[i]) = (arr[i], arr[j])
        i+=1
        j-=1
    }
    (arr[l], arr[j]) = (arr[j], arr[l])
    return j
}


// 递归对整个数组进行划分
func quickSort(_ arr: inout [Int], l: Int, r: Int) {
    if l >= r {
        return
    }
    let p = partitionDoubleIndex(&arr, l: l, r: r)
    quickSort(&arr, l: l, r: p - 1)
    quickSort(&arr, l: p + 1, r: r)
}

func callQuickSort(_ arr: inout [Int]) {
    quickSort(&arr, l: 0, r: arr.count - 1)
}




