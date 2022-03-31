//
//  MergeSort.swift
//  Sort
//
//  Created by Gpf 郭 on 2022/3/9.
//

import Foundation
// 归并排序， 复杂度 nlogn
// 将arr[l...mid]和arr[mid+1...r]两部分进行归并
func merge(_ arr: inout [Int], left: Int, mid: Int, right: Int) {
    var aux = [Int]()  // 生成包含right - left + 1个0 的数组
    for i in left...right {
        aux.append(arr[i]);
    }
    var i = left, j = mid + 1
    for k in left...right {
        if i > mid {
            arr[k] = aux[j - left];
            j += 1;
        } else if j > right {
            arr[k] = aux[i - left];
            i += 1;
        } else if aux[i - left] < aux[j - left] {
            arr[k] = aux[i - left]
            i += 1;
        } else {
            arr[k] = aux[j - left]
            j += 1
        }
    }
        
}

func divideMergeSort(_ arr: inout [Int], l: Int, r: Int) {
    if l >= r {
        return;
    }
    let mid = (l + r) / 2
    divideMergeSort(&arr, l: l, r: mid)
    divideMergeSort(&arr, l: mid + 1, r: r)
    merge(&arr, left: l, mid: mid, right: r)
}

func mergeSort(_ arr: inout [Int]) {
    divideMergeSort(&arr, l: 0, r: arr.count - 1)
}











