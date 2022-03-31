//
//  HeapSort.swift
//  Sort
//
//  Created by Gpf 郭 on 2022/3/9.
//

import Foundation

struct MaxHeap {
    var data:[Int]
    var count: Int
    var capacity: Int
    
    init(_ capacity: Int) {
        count = 0
        data = [Int](repeating: 0, count: capacity + 1)
        self.capacity = capacity
    }
    
    func countValue() -> Int {
        return count
    }
    
    mutating func insert(_ item: Int) {
        assert(count + 1 <= capacity)
        data[count + 1] = item
        count+=1
        shiftUp(count)
    }
    
    mutating func shiftUp(_ k: Int) {
        var k = k
        while (k > 1 && data[k / 2] < data[k]) {
            (data[k/2], data[k]) = (data[k], data[k / 2])
            k /= 2
        }
    }
    
    mutating func shiftDown(_ k: Int) {
        var k = k
        while 2 * k <= count {
            var j = 2 * k
            if j + 1 <= count && data[j + 1] > data[j] {
                j+=1
            }
            if data[k] >= data[j] {
                break
            }
            (data[k], data[j]) = (data[j], data[k])
            k = j
        }
    }
    
    mutating func extractMax() -> Int {
        assert(count > 0)
        let ret = data[1];
        (data[1], data[count]) = (data[count], data[1])
        count -= 1
        shiftDown(1)
        return ret
    }
}








