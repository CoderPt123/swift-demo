//
//  main.swift
//  1.4 Bool类型
//
//  Created by  PengTao on 2018/9/10.
//  Copyright © 2018  PengTao. All rights reserved.
//

import Foundation

/*
 C 语言和 OC 并没有真正的 Bool 类型
   C: Bool 类型非 0 即真
   OC: Bool 类型是 typedef signed char BOOL
 
 Swift 引入了真正的 Bool 类型
   Bool: true, false
 */

let isOK = true

/*
 Swift 中的 if 的条件只能是一个 Bool 的值或者是返回值是 Bool 类型的表达式(==/!=/>/<等等)
 OC 中 if 可以是任何整数(非0即真), 但是存在的问题是可能将判断写错, 写成赋值 if(isOK = 2), 在开发中为了避免这个问题有经验的程序员会这样写 if(2 == isOK) 来避免这个问题. 在Swift中很好的解决了这个问题
 */

if isOK {
    print("YES")
} else {
    print("NO")
}
