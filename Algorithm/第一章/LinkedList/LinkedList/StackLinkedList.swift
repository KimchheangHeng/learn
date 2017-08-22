//
//  StackLinkedList.swift
//  LinkedList
//
//  Created by huahuahu on 2017/8/22.
//  Copyright © 2017年 huahuahu. All rights reserved.
//
//链表实现栈

import Foundation

class LinkedListStack<Item>
{
    var first:Node<Item>
    private(set) var size:Int
    
    init() {
        first = Node<Item>()
        size = 0
    }
    
    func push(item:Item) -> Void {
        let oldFirst = first
        first = Node<Item>()
        first.item = item
        first.next = oldFirst
        size = size + 1
    }
    
    func pop() -> Item? {
        let item = first.item
        if let _ = item ,let next = first.next
        {
            first = next
            size = size - 1
        }
        return item
    }
}
