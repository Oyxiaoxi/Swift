//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

func addOne(num:Int) -> Int{
    return num + 1
}

// 柯里化
func addTo(_ adder:Int) -> (Int) -> Int{
    return{
        num in
        return num + adder
    }
}

let addTwo = addTo(2)
let result = addTwo(6)

// 比较大小
func greaterThan(_ comparer: Int) -> (Int) -> Bool {
    return { $0 > comparer }
}

let greaterThan10 = greaterThan(10)

greaterThan10(13)    // => true
greaterThan10(9)     // => false”

// Instance Methods are “Curried” Functions in Swift
protocol TargetAction{
    func performAction()
}

struct TargetActionWrapper<T: AnyObject>:
TargetAction {
    weak var target: T?
    let action: (T) -> () -> ()
    
    func performAction() -> () {
        if let t = target {
            action(t)()
        }
    }
}

enum ControlEvent{
    case TouchUpInside
    case ValueChanged
}

class Control {
    var actions = [ControlEvent: TargetAction]()
    
    func setTarget<T:AnyObject>(target:T, action: @escaping(T) -> () -> (),controlEvent: ControlEvent) {
        actions[controlEvent] = TargetActionWrapper(target: target, action: action)
    }
    
    func removeTargetForControlEvent(controlEvent: ControlEvent){
        actions[controlEvent] = nil
    }
    
    func performActionForControlEvent(controlEvent: ControlEvent){
        actions[controlEvent]?.performAction()
    }
}













