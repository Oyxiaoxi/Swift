# Swift

## Swift 11 Tips

学习了两周的 **Swift** 发现我这个小白鼠，跟大神的区别！

### 扩展(Extension)

##### 任务：求平方根

```Swift
func square(x: Int) -> Int { return x * x }
var squaredOfFive = square(x: 5)
square(x: squaredOfFive) // 625
```
为了求5的四次方我们被迫创建变量 squaredOfFive — 高手可不喜欢被迫定义一个无用的变量。

```Swift
extension Int { 
 var squared: Int { return self * self }
}
5.squared // 25
5.squared.squared // 625
```

### 泛型(Generics)

##### 打印输出数组内所有的元素。

```Swift
var stringArray = ["苍老师", "范老师", "优衣库"]
var intArray = [1, 3, 4, 5, 6]
var doubleArray = [1.0, 2.0, 3.0]
func printStringArray(a: [String]) { 
        for s in a { 
              print(s) 
        }
}
func printIntArray(a: [Int]) { for i in a { print(i) } }
func printDoubleArray(a: [Double]) {for d in a { print(d) } }
```
居然要定义这么多函数？ 菜鸟能忍高手不能忍！！！

```Swift
func printElementFromArray<T>(a: [T]) {
        for element in a { 
            print(element) 
        } 
}
```

### For 遍历 vs While 遍历

##### 打印 5 次 陆家嘴
```Swift
var i = 0
while 5 > i {
      print("陆家嘴")
      i += 1 
}
```
居然要定义这么多函数？ 菜鸟能忍高手不能忍！！！

```Swift
for _ in 1...5 { 
     print("陆家嘴") 
}
```

### Gaurd let vs if let

##### 让我们写个欢迎新用户的程序。
```Swift
var myUsername: Double?
var myPassword: Double?
func userLogIn() {
     if let username = myUsername {
          if let password = myPassword {
               print("优衣库欢迎, \(username)"!)
          }
     }
}
```
这些令人讨厌的嵌套代码，我们要消灭它

```Swift
func userLogIn() {
     guard let username = myUsername, let password = myPassword 
          else { return } 
        print("优衣库欢迎, \(username)!") 
}
```

### 计算属性 vs 函数
##### 计算圆的直径
```Swift
func getDiameter(radius: Double) -> Double { return radius * 2}
func getRadius(diameter: Double) -> Double { return diameter / 2}
getDiameter(radius: 10) // return 20
getRadius(diameter: 200) // return 100
getRadius(diameter: 600) // return 300
```
上面我们创建了2个毫无关系的函数，可是直径和周长两者真的没有关系吗？

```Swift
var radius: Double = 10
var diameter: Double {
      get { return radius * 2}
      set { radius = newValue / 2} 
}
radius // 10
diameter // 20
diameter = 1000
radius // 500
```

### 枚举 - 类型安全

##### 卖门票
```Swift
switch "Adult" {
   case "Adult": print("请付 50 元")
   case "Child": print("请付 25 元")
   case "Senior": print("请付 30 元")
   default: print("你确认不是僵尸吗，哥们?") 
}
```
“Adult”, “Child”, “Senior” 这里都是硬编码，你每次需要输入手动输入这些字符，记得我们上面讲到的吗？ 手动键入越少，错误越少，生活越美好。

```Swift
enum People { case adult, child, senior }
switch People.adult {
   case .adult: print("请付 50 元")
   case .child: print("请付 25 元")
   case .senior: print("请付 30 元")
   default: print("你确认不是僵尸吗，哥们?") 
}
```
### 空合运算符

##### 用户选择微博主体颜色。
```Swift
var userChosenColor: String? 
var defaultColor = "Red"
var colorToUse = ""
if let Color = userChosenColor { 
     colorToUse = Color 
} else { 
     colorToUse = defaultColor
 }
```
“Adult”, “Child”, “Senior” 这里都是硬编码，你每次需要输入手动输入这些字符，记得我们上面讲到的吗？ 手动键入越少，错误越少，生活越美好。

```Swift
var colorToUse = userChosenColor ?? defaultColor
```
### 函数式编程

##### 用户选择微博主体颜色。
```Swift
var newEvens = [Int]()
for i in 1...10 {
  if i % 2 == 0 { 
      newEvens.append(i) 
    } 
}
print(newEvens) // [2, 4, 6, 8, 10]
```
这种for循环真是冗长，让人看的昏昏欲睡。
```Swift
var evens = (1...10).filter { $0 % 2 == 0 } 
print(evens) 
// [2, 4, 6, 8, 10]
```

### 闭包 vs 函数

##### 求两个数字的和。
```Swift
func sum(x: Int, y: Int) -> Int { 
    return x + y 
}
var result = sum(x: 5, y: 6) // 11
print(newEvens) // [2, 4, 6, 8, 10]
```
为了这个功能我还需要记住函数名 和 变量名？ 能不能少一个呢？
```Swift
var sumUsingClosure: (Int, Int) -> (Int) = { $0 + $1 }
sumUsingClosure(5, 6) // 11
```

### 属性观测器

##### 计算圆的直径
```Swift
var radius = 10.0
func getDiameter(radius: Double) -> Double { 
      return radius * 2
}

getDiameter(radius: radius) // return 20

```
这里是不需要专门定义函数的。

```Swift
var diameter = 0
var radius: Double = 10 {
      willSet { print("准备赋值中") }
      didSet { diameter =radius * 2}
     }
}
radius  = 10 // 准备赋值中
diameter // 20.0
```

### 便利初始化

#####   一个人有多少根手指和脚趾
```Swift
class Human {
 var finger: Int
 var toe: Int

init(finger: Int, toe: Int) {
  self.finger = finger
  self.toe = toe }
}


var daDi = Human(finger: 10, toe: 10)
daDi.finger // 10
daDi.toe // 10

```
因为绝大部分人都有十根手指和脚趾，可以初始化时预先赋值。

```Swift
class Human {
 var finger: Int
 var toe: Int

init(finger: Int, toe: Int) {
  self.finger = finger
  self.toe = toe
 }

  convenience init() {
   self.init(finger: 10, toe: 10) // 调用主初始化方法
   } 
}

var daDi = Human()
daDi.finger // 10
daDi.toe // 10
```
