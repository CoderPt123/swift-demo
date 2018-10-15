//
//  main.swift
//  1.7 字符和字符串
//
//  Created by  PengTao on 2018/9/11.
//  Copyright © 2018  PengTao. All rights reserved.
//

import Foundation

//MARK: 字符
/*
 OC: char charValue = 'a';
 */
var charVlaue1: Character = "a"

/* Swift和OC字符不一样
 1. Swift是用双引号
 2. Swift中的字符类型和OC也不一样, OC中的字符占一个字节, 因为它自包含ASCII表中的字符, 而Swift中的字符除了可以存储ASCII表中的字符还可以存储unicode字符
 例如中文:
 OC:char charValue = '韩'
 Swift: var charValue: Character = "韩" // 正确
 
 OC的字符是遵守ASCII标准的,Swift的字符是遵守unicode标准的, 所以可以存放实际上所有国家的字符(大部分)
 */
var charValue2: Character = "韩" //正确

/*
 注意:双引号中只能放一个字符, 如下是错误写法
 var charValue: Character = "abc"
 */


//MARK: 字符串
/*
 字符是单个字符的集合, 字符串十多个字符的集合, 想要存放多个字符需要使用字符串
 
 C:
 char *stringValue = "ab"
 char stringStr = "ab"
 
 OC:
 NSString *stringArr = "ab";
 */
var stringValue1 = "ab"

/*
 C语言中的字符串是以\0结尾的,例如:
 char *sringValue = "abc\0def"
 printf("%s", stringValue);
 打印结果为: abc
 
 OC语言中的字符串也是以\0结尾的, 例如:
 NSString *stringValue = @"abc\0def";
 NSLog(@"%@", stringValue);
 打印结果为: abc
 */

var stringValue2 = "abc\0def"
print(stringValue2)
// 打印结果为:abcdef
// 从此可以看出Swift中的字符串和C语言/OC语言中的字符串是不一样的


//MARK: 字符串常用方法

/*
 计算字符串长度:
 C:
 char *stringValue = "abc李";
 printf("%tu", strlen(stringValue));
 打印结果6
 
 OC:
 NSString *stringValue = @"abc李";
 NSLog(@"%tu", stringValue.length);
 打印结果4, 以UTF16计算
 */
var stringVlaue = "abc韩"
print(stringVlaue.lengthOfBytes(using: String.Encoding.utf8))
// 打印结果:6, 和C语言一样计算字节数

/*
 字符串拼接
 C:
 char str1[] = "abc";
 char *str2 = "bcd";
 char *str = strcat(str1, str2);
 
 OC:
 NSMutableString *str1 = [NSMutableString stringWithString:@"abc"];
 NSString *str2 = @"bcd";
 [str1 appendString:str2];
 NSLog(@"%@", str1);
 
 */
var str1 = "abc"
var str2 = "hjq"
var str = str1 + str2
print(str)


/*
 格式化字符串
 C: 相当麻烦, 指针, 下标等方式
 OC:
 NSInteger index = 1;
 NSString *str1 = [NSMutableString stringWithFormat:@"test_%tu", index];
 NSLog(@"%@", str1);
 */
var index = 1
var str3 = "test_\(index)"
print(str3)


/*
 字符串比较:
 OC:
 NSString *str1 = @"abc";
 NSString *str2 = @"abc";
 if ([str1 compare:str2] == NSOrderedSame) {
     NSLog(@"相等");
 } else {
     NSLog(@"不相等");
 }
 
 if ([str1 isEqualToString:str2]) {
     NSLog(@"相等");
 } else {
     NSLog(@"不相等");
 }
 
 Swift:(== / != / >= / <=), 和C语言的strcmp一样是逐个比较
 */

var str4 = "abc"
var str5 = "abc"
if str4 == str5 {
    print("相等")
} else {
    print("不相等")
}

var str6 = "abd"
var str7 = "abc"
if str6 >= str7 {
    print("大于等于")
} else {
    print("不大于等于")
}


/*
 判断前后缀
 OC:
 NSString *str = @"http://www.blog26.com";
 if ([str hasPrefix:@"http"]) {
     NSLog(@"是url");
 }
 
 if ([str hasSuffix:@".com"]) {
     NSLog(@"是天朝顶级域名");
 }
 */
var str8 = "http://www.baidu.com"
if str8.hasPrefix("www") {
    print("是url")
}
if str8.hasSuffix(".com") {
    print("是顶级域名")
}


/*
 大小写转换
 OC:
 NSString *str = @"abc.txt";
 NSLog(@"%@", [str uppercaseString]);
 NSLog(@"%@", [str lowercaseString]);
 */
var str9 = "abc.txt"
print(str9.uppercased())
print(str9.lowercased())


/*
 转换为基本数据类型
 OC:
 NSString *str = @"250";
 NSInteger number = [str integerValue];
 NSLog(@"%tu", number);
 */
var str10 = "250"
// 如果str不能转换为整数, 那么可选类型返回nil
// str = "250sd", 不能转换所以可能为nil
var numerber:Int? = Int(str10)
if numerber != nil {
    print(numerber!) // 2.0可以自动拆包,3.0以后则不会
}
