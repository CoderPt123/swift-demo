//
//  main.swift
//  1.2 基本数据类型
//
//  Created by  PengTao on 2018/9/10.
//  Copyright © 2018  PengTao. All rights reserved.
//

import Foundation


/* 1.2 基本数据类型
 OC:
 整型:  int intValue = 10;
 长:    long
 短:    short
 浮点型: double doubleValue = 10.10;
        float floatValue = 5.1;
 有符号: signed
 无符号: unsigned
 各种类型的数据的取值范围在不同位的编译器下取值范围不同
 
 Swift:注意关键字大写
 */


//MARK: 整型
var intValue: Int = 10

// 如果按照长度划分,Swift中的长短比OC更加精确
var intValue3: Int8 = 6
var intValue4: Int16 = 7
var intValue5: Int32 = 8
var intValue6: Int64 = 9

// 有符号无符号, 默认是有符号的(UInt8/UInt16/UInt32/UInt64)
// 注意：无符号的数比有符号的取值范围更大, 因为符号位也用来存值
var uintValue7: UInt = 10

//MARK: 浮点型
var doubleValue: Double = 10.10 // 表示64位浮点数
var floatValue: Float = 8.9     // 表示32位浮点数

/* Swift 是类型安全的语言, 如果取值错误会直接报错, 而 OC 不会
 取值不对
 OC: unsigned int intValue = -10; 不会报错
 Swift: var intValue:UInt = -10 会报错
 
 溢出:
 OC: int intValue = INT_MAX + 1; 不会报错
 Swift: var intValue: UInt = UInt.max + 1 会报错
 */

/* 数据类型的相互赋值(隐式类型转换)
 OC可以
 int: intValue = 10;
 double: doubleValue = intValue;
 
 Swift: 不可以
 var intValue: Int = 10
 var doubleValue: Double = intValue
 在Swift中“值永远不会被隐式转换为其他类型”(OC中可以隐式类型转换), 以上语句会报错
 */
