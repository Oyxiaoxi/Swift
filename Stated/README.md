## Getting Stated

### 变量 / 常量
#### 基本数据类型
	1. 整数:  Int
	2. 浮点数: Double表示64位浮点数,Float表示32位浮点数
	3. 布尔类型: Bool,布尔值只有 true 和 false 两种
	4. 字符串: String
	5. 字符: Character

#### 变量和常量
	1. 变量:值能被修改,var 修饰
	2. 常量:值不能被修改,let 修饰

```Swift
var a = 20
a = 10
let b = 20
// b = 10  常量不能修改:error:'b' is a 'let' constant
```
	1. 会自动推导声明的变量或常量的属性
	2. 使用【option + 单击】键查看属性的类型，效果图见:Resources/查看属性.png

```Swift
# 1.自动推导类型
let str = "ningcol"
let intValue = 10
let floatValue = 1.2
# 2.指定数据类型
let doubleValue:Double = 10
```

### 运算符
#### 基本运算符

##### 赋值运算符
	var a = 5
	
##### 加减乘除
	1 + 2
	5 - 3
	2 * 3
	10.0 / 2.5
	
##### 任何情况下都不会做隐式转化，必须以相同类型进行计算

	let num1 = 1
	let num2 = 2.2
	let num3 = Double(num1) + num2	

##### 必须要显式类型的转化
	let j = 2.2
	let i:Float = 1.2
	i + Float(j)

#### 求余运算
	a % b

#### 负号运算
	let minusB = -b

#### 组合赋值运算
	a += 2
	
#### 比较运算
	1 == 1
	2 != 1
	2 > 1
	1 < 2
	1 >= 1
	2 <= 1

#### 三目运算
	let d = a > b ? 100 : 200	

#### 空合运算(Nil Coalescing Operator)
	1. 空合运算符( a ?? b )将对可选类型 a 进行空判断(可选项内容详见:04-可选项)
	2. 如果 aName 为 nil，则执行??后面的，否则执行aName（注意??两边都有空格）

```swift
var aName: String? = "ningcol"
//var aName: String? = nil
let bName = aName ?? "aNameIsNil"
```	

#### 区间运算
	1. 闭区间运算符( a...b )定义一个包含从 a 到 b (包括 a 和 b )的所有值的区间
	2. 半开区间( a..<b )定义一个从 a 到 b 但不包括 b 的区间

```swift
for index in 1...5 {
	print(index)
}

for index in 1..<5 {
	print("半开区间:\(index)")
}
```

#### 逻辑运算
	1. 逻辑非(!a):布尔值取反
	2. 逻辑与( a && b ):只有 a 和 b 的值都为 true 时，整个表达式的值才会是 true
	3. 逻辑或( a || b ):两个逻辑表达式的其中一个为 tru e ，整个表达式就为 true

```swift
let allowedEntry = false
let enteredDoorCode = true

if !allowedEntry {
    print("ACCESS DENIED")
}

if allowedEntry && enteredDoorCode {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

if allowedEntry || enteredDoorCode {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
```

### 可选项
	可选值:可以有值,可以为nil(用 ? 表示可选值)	
#### URL 为可选项
	let usr:NSURL = NSURL(string: "http://www.baidu.com/")

#### str 为可选项
	var str: String? = "ningcol"

#### var 的可选项默认为 nil
	var a:Int?
	print(a)

#### if let
> if let : 确保 myUrl 有值，才会进入分支

```swift
if let myUrl = URL{
    print(myUrl)
}

var aName: String? = "ningcol"
// var aName: String? = nil
var aAge: Int? = 18

if let name = aName,let age = aAge {
    print(name + String(age))
}
// 可以对值进行修改
if var name = aName,let age = aAge {
    name = "lisi"
    print(name + String(age))
    
}
```

#### guard let
	1. guard let 和 if let 相反。表示一定有值,没有就直接返回
	2. 降低分支层次结构
	3. playground不能展示效果，要在函数中展示
```swift
// 创建一个类(详见:对象和类)
class test{
    func demo(){
        let aNick: String? = "ningcol"
        let aAge: Int? = 10
        guard let nick = aNick ,let age = aAge  else {
            print("nil")
            return
        }
        print("guard let: " + nick + String(age))
    }

}
var t = test()
t.demo()
```

#### 强制解包

##### 创建一个数组(详见:组数)
	var dataList:[String]?
	dataList = ["zhangsan","lisi"]

	1. dataList? 表示 datalist 可能为 nil
	2. 如果为 nil, .count 不会报错，仍然返回 nil
	3. 如果不为 nil，.count执行，返回数组元素个数
	4. ?? 空合运算符(详见:02-运算符)

	let count = dataList?.count ?? 0

	表示 datalist 一定有值,否则会出错！
	let cou = dataList!.count

### 条件语句

#### if语句
	1. 必须要有大括号
	2. 没有"非零即真"的概念，只有ture／false

```swift
let num = 20
if num > 10{
    print("大于10");
}else{
    print("小于或等于10")
}
```

#### switch
	1. 值可以是任何类型
	2. 作用域仅在 case 内部
	3. 不需要 break
	4. 每一个 case 都要有代码
```swift
let name = "nick"

switch name {
case "nick":
    let age = 18
    print("one  \(age)")
case "fil":
    print("two")
case "Davi":
    print("three")
case "": break  //相当于有一行代码
case "tom","ningcol":
    print("tomAndNingcol")
default:
    print("other")
}
```

### 循环

#### for循环

##### 去掉了C语言风格的循环( ..< 区间运算符,详见:预算符)
	for i in 0..<10{
	    print(i)
	}
	
##### 使用 "_" 忽略不关心的值
	for _ in 0..<5{
	    print("ningcol")
	}

##### 递增(步数为2)
	print("----步长循环-----")
	for i in stride(from: 0, to: 12, by: 2) {
    	print(i)
	}

##### 递减
	for i in stride(from: 12, to: 0, by: -2) {
	    print(i)
	}
	
##### 反序循环
	print("----反序循环----")
	let range = 0...10
	for i in range.reversed(){
    	print(i)
	}

##### while循环
	print("----while循环----")
	var n = 2
	while n < 100 {
	    n=n * 2
	}
	print(n)

##### epeat-while循环
> 它和 while 的区别是在判断循环条件之前，先执行一次循环的代码块。然后重复循环直到条件为 false

```swift
var m = 2
repeat {
    m = m * 2
} while m < 100
print(m)
```

### 字符串
	1. String 结构体，效率比对象高，一般推荐使用，支持遍历
	2. NSString 继承NSObject

```swift
var str:String = "Hello你好"
//var st:NSString = "hah"
// 字节数量
print(str.lengthOfBytes(using: .utf8))
// 字符串长度
print(str.characters.count)
for a in str.characters{
    print(a)
}
```
#### 字符串拼接
	let name:String? = "老王"
	let age = 80
	let location = "隔壁"
	print(location + (name ?? "a") + String(age) + "岁")

#### '\(变量名)' 会自动转换拼接
	print("\(location)\(name)\(age)岁")
	
	let rect = CGRect(x: 0, y: 0, width: 100, height: 100)
	print("\(rect)")

#### 格式字符串
```swift
let h = 13
let m = 5
let s = 9
let timeStr = String(format: "%02d:%02d:%02d", arguments: [h,m,s])
let timeStr1 = String(format: "%02d:%02d:%02d", h,m,s)
```
	1. 在Swift中使用 Range，最好把 String 改成 NSString
	2. str.substring(with: Range<String.Index>) 很麻烦
	3. '值 as 类型' 作为类型转换

```swift
(str as NSString).substring(with: NSMakeRange(2, 5))

let index = str.index(str.startIndex, offsetBy: 3)
str.substring(from: index)
// "123"只是用来取到索引位置
str.substring(from: "123".endIndex)
str.substring(to: index)

// String 使用 Range
let myRange = str.startIndex..<str.index(str.startIndex, offsetBy: 5)
str.substring(with: myRange)

let myRange1 = index..<str.index(str.startIndex, offsetBy: 5)
str.substring(with: myRange1)
```

### 元组
>+ 元组的元素个数固定，不允许增加、删除
>+ 支持嵌套

	var stu = (404,"小白")
	var msg = ("基本信息", ("李刚",34))
	print(stu)
	print(msg)
	
	var (a,b) = stu
	print(a,b)
	
#### 如果仅需要元组中的个别的值，可以使用"_"的方式来处理不需要的值

	let (c,_) = stu
	print(c)
	
#### 通过序号获得元组的值

	print("status is \(stu.0)")
	
#### 可以修改
	
	stu.0 = 500
	let message = (status: 100, msg:"哈哈")
	print("message is \(message.status)  and \(message.msg)")

### 数组定义
#### 方括号 [] 来创建数组
	let array1 = ["zhangsan","lisi"]
	
	let array2 = [1,2,3,4,5]
	
	
#### 声明空数组,（必须初始化）
```swift
var array3:[Int] // 定义一个数组（没有初始化）
array3 = [Int]() //初始化
let array4 = [String]()  // 等价上面两行代码

let array5:[Any] = ["zhangsan","lisi",20]

var arr3 = [Double](repeating: 0.0, count: 3) //[0.0, 0.0, 0.0]
var arr4 = Array(repeating: 3.0, count: 3)  //[3.0, 3.0, 3.0]
var arr: [String] = ["Alex", "Brian", "Dave"]
print(arr.count)
print(arr[0])
```

#### 数组遍历
```swift
for name in array1{
    print(name)
}

for i in 0..<array2.count{
    print(array2[i])
}
```
##### 同时遍历下标和内容
```swift
for e in array2.enumerated(){
    print(e)
    print("元组 \(e.offset) \(e.element)")
}
```
##### 反序遍历
```swift
for a in array2.reversed(){
    print(a)
}
```

#### 数组增删改
```swift
// 追加
arr.append("ningcol")

// 合并(类型必须一致)
let arr1 = ["Evi","Tank"]
arr += arr1

// 修改
arr[0] = "Tom"
print(arr)

// 删除
arr.removeFirst()
print(arr)

arr.remove(at: 2)
print(arr)

// 删除全部并保留空间
arr.removeAll(keepingCapacity: true)
print(arr.capacity)  //数组容量
```

#### 容量

```swift
print("初始容量 \(array3.capacity)")
for i in 0..<8{
    array3.append(i)
    print("\(array3)，容量：\(array3.capacity)")
}
```

### 字典
#### 字典定义
```swift
//方括号 [] 来创建字典
let dict1 = ["name":"lisi","age":"18"]
// 不同类型必须指明为 any
var dict2:[String:Any] = ["name":"lisi","age":18]


let array = [
    ["name":"lisi","age":"18"],
    ["name":"wangwu","age":8]
]
print(array)
let array1:[[String:Any]] = [
    ["name":"lisi","age":"18"],
    ["name":"wangwu","age":8]
]
print(array1)

print(dict2["age"])
```

#### 字典增删改
```swift
// 增加
dict2["sex"] = "man"
print(dict2)
// 修改（通过key来取值，key不存在就是新增）
dict2["name"] = "zhangsan"
print(dict2)
// 删除(直接给key进行删除)
dict2.removeValue(forKey: "age")
print(dict2)
```

#### 字典遍历
```swift
for e in dict2{
    //e 为元组
    print("字典遍历:\(e)  e.key:\(e.key)  value:\(e.value)")
}
// key value 可以随意更改
for (key,value) in dict2{
    //e 为元组
    print("key:\(key), value:\(value)")
}
```

#### 字典合并
```swift

var dict3:[String:Any] = ["name":"zhangsan","age":18,"sex":"man"]
let dict4:[String:Any] = ["name":"ningcol","height":50]
// 如果key存在修改  不存在会增加
for e in dict4{
    dict3[e.key] = dict4[e.key]
}
print("合并dict:" + String(format: "%@", dict3))
```

### 函数
#### 格式: 函数名(形参列表) -> 返回值类型

	func sum(x: Int ,y: Int) -> Int{
	    return x + y
	}
	print(sum(x: 10, y: 20))

#### 外部参数
	1. 外部参数是在形参前加一个名字
	2. 外部参赛不影响内部细节
	3. 外部参数让调用更加直观

	func sum(num x: Int ,num y: Int) -> Int{
	    return x + y
	}
	print(sum(num: 30, num: 40))

#### 外部参数使用 "_" 会忽略形参
	
	func sum(_ x: Int ,_ y: Int) -> Int{
    return x + y
	}
	print(sum(40, 50))

#### 默认值
##### 不指定参数的值就为默认值

```swift
func sum1(x: Int = 1 ,y: Int = 2) -> Int{
    return x + y
}
print(sum1())
print(sum1(x: 10, y: 10))
print(sum1(x: 20))
print(sum1(y: 20))
```

#### 无返回值
```swift
// 1.直接省略
func person(){
    print("ningcol")
}
// 2.包含括号
func person1() ->(){
    print("ningcol")
}
// 3.Void
func person2() ->Void{
    print("ningcol")
}

print(person())
print(person1())
print(person2())
```

### 对象和类
#### 创建一个类
```swfit
class Shape {
    var numberOfSides = 0
    // 定义 simpleDescription 无参方法,返回值为 String 类型
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
```

#### 实例化
	var shape = Shape()
#### 赋值
	shape.numberOfSides = 7
#### 调用方法
	var shapeDescription = shape.simpleDescription()
#### 构造函数来初始化类实例
```swift
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    init(name: String) {
        self.name = name
    }
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
```

#### 重写父类方法
```swift
class Square: NamedShape {
    var sideLength: Double
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    func area() ->  Double {
        return sideLength * sideLength
    }
    // 使用 override
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    } }
let test = Square(sideLength: 5, name: "my test square")
test.area()
test.simpleDescription()
```

### 控件
#### 创建一个 View
	let v = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
	let u = UIView()
#### [UIColor redColor]   类方法：直接点出来
	v.backgroundColor = UIColor.red
#### 创建一个按钮
	let btn = UIButton(type: .contactAdd)
#### 将 btn 添加到 View 上
	btn.center = v.center
	v.addSubview(btn)

### 闭包
#### 定义一个常量记录函数
```swift
func sum(x: Int,y: Int) -> Int{
    return x + y
}

print(sum(x: 20, y: 10))

let fu = sum
print(fu(10, 10))
```
#### 最简单的闭包
> demo 为没有参数,没有返回值的函数(可以省略参数、返回值、in)

	let demo = {
	    print("hello")
	}
	demo()

#### 带参数的闭包
	1. 参数,返回值,实现代码都是写在 {} 中
	2. 必须以 "in" 关键字分隔定义和实现
	3. 格式: 形参列表 -> 返回值类型 in 实现代码

```swift
// 无返回值,有参数
let demo1 = { (x: Int) -> () in
    print(x)
}
demo1(50)

// 有返回值,有参数
let demo2 = {
    (x: Int) -> (Int) in
    return 40 + x
}
print(demo2(40))
```

