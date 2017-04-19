//: Playground - noun: a place where people can play

import UIKit

struct Money {
    var usdollar = 0.0
    
    init(_ _usdollar:Double) {
        usdollar = _usdollar
    }
    
    init(moneyInKRW:Double) {
        usdollar = moneyInKRW * 0.00085
    }
}

let myMoney = Money(120)
myMoney.usdollar

let myMoney2 = Money(moneyInKRW: 350_000)
myMoney2.usdollar

