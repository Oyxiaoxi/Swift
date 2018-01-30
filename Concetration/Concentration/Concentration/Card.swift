//
//  Card.swift
//  Concentration
//
//  Created by 欧阳晓锡 on 2018/1/30.
//  Copyright © 2018年 Oyxiaoxi. All rights reserved.
//

import Foundation

struct Card {
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
        
    }
    
    init(){
        self.identifier = Card.getUniqueIdentifier()
    }
}
