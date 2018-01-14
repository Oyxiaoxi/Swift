import UIKit

protocol knowledgeofFeedAnimal {
    func canIGoOutSide() -> Bool
}

class Human: Animal, knowledgeofFeedAnimal{
    func canIGoOutSide() -> Bool {
        return false
    }
}

class Animal {
    var face: string
    var nickname: string
    var food: string

    var master = knowledgeofFeedAnimal?

    init(face: string, nickname: string, food: string) {
        self.face = face
        self.nickname = nickname
        self.food = food
    }
    
    func touchedHead(){
        print("I want to eat \(food)")
    }

    func wantToGoOutSide(){
        if let master = master{
            if master.wantToGoOutSide(){
                print("Just Go")
            } else {
                print("Stay Home")
            }
        } else {
            print("Just Go")
        }
    }
}

class Cat: Animal{
    init(){
        super.init(face: "🐱", nickname: "Lili", food: "🐟")
    }
}

var myCat = Cat()
myCat.master = Human(face: "😆", nickname: "Nick", food: "🍟")
myCat.touchedHead()
