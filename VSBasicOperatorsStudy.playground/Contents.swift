//: Playground - noun: a place where people can play

import UIKit

// 基本运算符
// >> 术语
/*
运算符有一元、二元和三元运算符。
• 一元运算符对单一操作对象操作(如 -a )。一元运算符分前置运算符和后置运算符,前置运算符需紧跟在操 作对象之前(如 !b ),后置运算符需紧跟在操作对象之后(如 i++ )。
• 二元运算符操作两个操作对象(如 2 + 3 ),是中置的,因为它们出现在两个操作对象之间。
• 三元运算符操作三个操作对象,和 C 语言一样,Swift 只有一个三元运算符,就是三目运算符( a ? b : c)。
*/

// 受运算符影响的值叫操作数,在表达式 1 + 2 中,加号 + 是二元运算符,它的两个操作数是值 1 和 2 。


// >> 赋值运算符

// 赋值运算( a = b ),表示用 b 的值来初始化或更新 a 的值:

let b = 4
var a = 5
a = b // a = 4

// 如果赋值的右边是一个多元组,它的元素可以马上被分解成多个常量或变量:
let (x, y, width, height) = (0, 0, 10, 10)
// x = 0 , y = 0 , width = 10 , height = 10 


// >> 算术运算符

/*
Swift 中所有数值类型都支持了基本的四则算术运算:
• 加法(+) 
• 减法(-) 
• 乘法(*)
• 除法(/)
*/
1 + 2 // 3

4 - 1 // 3

1 * 3 // 3

6 / 2 // 3

"Hello " + "Swift"


// >> 求余运算符
// 求余运算( a % b )是计算 b 的多少倍刚刚好可以容入 a ,返回多出来的那部分(余数)。

// 求余运算( % )在其他语言也叫取模运算。然而严格说来,我们看该运算符对负数的操作结果,"求余"比"取模"更合适些。
// a = (b * 倍数) + 余数
let a1 = 10
let b1 = 3
let b2 = -3
a1 % b1 // 1 --- a1 = (b1 * 3) + 1
a1 % b2 // 1 --- a1 = (b2 * -3) + 1


// >> 浮点数求余计算
// 不同于 C 语言和 Objective-C,Swift 中是可以对浮点数进行求余的。

9 % 2.5 // 1.5


// >> 自增和自减运算
// 和 C 语言一样,Swift 也提供了对变量本身加1或减1的自增( ++ )和自减( -- )的缩略算符。
// 其操作对象可 以是整形和浮点型

/*
    • 当 ++ 前置的时候,先自増再返回。
    • 当 ++ 后置的时候,先返回再自增。
    • 当 -- 前置的时候,先自减再返回。
    • 当 -- 后置的时候,先返回再自减。
*/
var i = 0
++i // i = 1
--i // i = 0
i++ // i = 0
i-- // i = 1
print("i = \(i)") // i = 0


// >> 一元负号运算符
// 数值的正负号可以使用前缀 - (即一元负号)来切换:
// ** 一元负号( - )写在操作数之前,中间不能有空格。
let three = 3
let minusThree = -three // minusThree 等于 -3
let plusThree = -minusThree // plusThree 等于 3, 或 "负负3"

// >> 元正号运算符
// 一元正号( + )不做任何改变地返回操作数的值:
// ** 一元正号( + )写在操作数之前,中间不能有空格
let minusSix = -6
let alsoMinusSix = +minusSix // alsoMinusSix 等于 -6


// >> 组合赋值运算符
// 如同 C 语言,Swift 也提供把其他运算符和赋值运算( = )组合的组合赋值运算符,组合加运算( += )是其中

var a2 = 3
a2 += 4 // a2 = a2 + 4 , a2 = 7
// ** 复合赋值运算没有返回值, let b = a += 2 这类代码是错误。这不同于上面提到的自增和自减运算符。


// >> 比较运算符
/*
所有标准 C 语言中的比较运算都可以在 Swift 中使用:
• 等于( a == b )
• 不等于( a != b )
• 大于( a > b )
• 小于( a < b )
• 大于等于( a >= b )
• 小于等于( a <= b )

// ** 注意: Swift 也提供恒等 === 和不恒等 !== 这两个比较符来判断两个对象是否引用同一个对象实例。

每个比较运算都返回了一个标识表达式是否成立的布尔值:
*/

1 == 1 // true, 因为 1 等于 1

2 != 1 // true, 因为 2 不等于 1

2 > 1 // true, 因为 2 大于 1

1 < 2 // true, 因为 1 小于2

1 >= 1 // true, 因为 1 大于等于 1

2 <= 1 // false, 因为 2 并不小于等于 1


let name = "world"
if name == "world" {
    print("hello, world")
} else {
    print("I'm sorry \(name), but I don't recognize you")
}


// >> 三目运算符 (? :)
// 三目运算符的特殊在于它是有三个操作数的运算符,它的原型是 问题 ? 答案1 : 答案2 。
// 它简洁地表达根据 问题 成立与否作出二选一的操作。如果 问题 成立,返回 答案1 的结果; 如果不成立,返回 答案2 的结果。
let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20) // rowHeight 现在是 90
// ** 过度使用三目运算符会使简洁的代码变的难懂。应避免在一个组合语句中使用多个三目运算符。

// >> 空合运算符
/*
空合运算符( a ?? b￼ )将对可选类型 进行空判断,如果 包含一个值就进行解封,否则就返回一个默认值 .这个运算符有两个条件:
• 表达式 必须是Optional类型
• 默认值 的类型必须要和 存储值的类型保持一致
*/

var a3: Int?
let b3  = 5
let b4 = a3 != nil ? a3 : b3
let b5 = a3 ?? b3 // b4 == b5
// 如果 a3 为非空值( non-nil ),那么值 b3 将不会被估值。这也就是所谓的短路求值。

let defaultColorName = "red"
var userDefinedColorName: String? //默认值为 nil
var colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName 的值为空,所以 colorNameToUse 的值为 "red"






// >> 区间运算符
// Swift 提供了两个方便表达一个区间的值的运算符

/* 闭区间运算符
    闭区间运算符( a...b )定义一个包含从 a 到 b (包括 a 和 b )的所有值的区间, b 必须大于等于 a
*/
for idx in 6...9 {
    print("idx = \(idx)")
}



/* 半开区间运算符
    半开区间( a..<b )定义一个从 a 到 b 但不包括 b 的区间。 之所以称为半开区间,是因为该区间包含第一个值 而不包括最后的值。
*/
for idx in 6..<9 {
    print("idx = \(idx)")
}



// >> 逻辑运算
/*
逻辑运算的操作对象是逻辑布尔值。Swift 支持基于 C 语言的三个标准逻辑运算。
• 逻辑非(!a)

• 逻辑与( a && b )

• 逻辑或( a || b )
*/


// 逻辑非运算( !a )对一个布尔值取反,使得 true 变 false , false 变 true 。
let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}
// 输出 "ACCESS DENIED"



//  逻辑与( a && b )表达了只有 a 和 b 的值都为 true 时,整个表达式的值才会是 true 。
let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// 输出 "ACCESS DENIED"



// 逻辑或( a || b )是一个由两个连续的 | 组成的中置运算符。它表示了两个逻辑表达式的其中一个为 true ,整 个表达式就为 true 。
let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// 输出 "Welcome!"





// 逻辑运算符组合计算
// Swift 逻辑操作符 && 和 || 是左结合的,这意味着拥有多元逻辑操作符的复合表达式优先计算最左边的 子表达式。

// (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword
if   hasDoorKey || enteredDoorCode && passedRetinaScan || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// 输出 "Welcome!


// 使用括号来明确优先级
// 为了一个复杂表达式更容易读懂,在合适的地方使用括号来明确优先级是很有效的,虽然它并非必要的。
if hasDoorKey || (enteredDoorCode && passedRetinaScan) || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// 输出 "Welcome!


















