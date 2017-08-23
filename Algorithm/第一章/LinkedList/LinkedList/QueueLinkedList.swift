//
//  QueueLinkedList.swift
//  LinkedList
//
//  Created by huahuahu on 2017/8/23.
//  Copyright © 2017年 huahuahu. All rights reserved.
//

import Foundation

class QueueLinkedList<Item>:IteratorProtocol
{
    var first:Node<Item>?
    var last:Node<Item>?
    
    typealias Element = Item
    
    private(set) var size:Int
    
    init() {
        size = 0
    }
    
    func isEmpty() -> Bool {
//        return first == nil
        return size == 0;
    }
    
    func enqueue(item:Item) -> Void {
        var oldlast = last
        last = Node<Item>()
        last!.item = item
        last!.next = nil
        if isEmpty() {
            first = last
        }
        else
        {
            oldlast?.next = last
        }
        size = size + 1
    }
    
    func dequeue() -> Item? {
        if isEmpty() {
            return nil
        }
        var item = first?.item
        first = first?.next
        if isEmpty() {
            last = nil
        }
        size = size - 1
        return item
    }
    
    
    func next() -> Item? {
        return dequeue()
    }
}
