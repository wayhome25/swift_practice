//: Playground - noun: a place where people can play

import UIKit

var meetingRooms:Array<String> = ["A", "B", "C", "D", "E"]
var groups:[Int] = [1 ,2 ,3, 4, 5]

meetingRooms.insert("hello", at: 0)



meetingRooms += ["F"]

let maxSpeed:Int = 200

var currentSpeed:Int = 110
currentSpeed += 10

var speedHistory:[Int] = []
speedHistory += [currentSpeed]

let gpsSpeed0901 = 114.1
speedHistory.append(Int(gpsSpeed0901))

speedHistory[0]
speedHistory[1]

speedHistory.first
speedHistory.last

let historyBackup = speedHistory
speedHistory += [150]
historyBackup


var roomCapacity:[String:Int] =  ["A" : 1, "B" : 5, "C" : 10, "D" : 7, "E" : 2]
//roomCapacity += ["F": 10]
roomCapacity["F"] = 10
roomCapacity["E"]
roomCapacity.keys
roomCapacity.values

let roomNames = [String](roomCapacity.keys)
let capacities = [Int](roomCapacity.values)

let total = capacities.reduce(0, +)

let subway2 :Set = ["A", "B", "C", "D", "E"]
let subway3 : Set = ["Z", "x", "c", "v", "A", "C"]
let transfer = subway2.intersection(subway3)
let notTransfer = subway2.subtracting(subway3)

let union = subway2.union(subway3)
let exclusive = subway2.symmetricDifference(subway3)


if transfer.count > 0 {
    print("환승역은\(transfer) 입니다.")
} else {
    print("환승역이 없습니다")
}

for station in subway2 {
    print("이번역은 \(station) 이에요")
}

for (roomName, capacity) in roomCapacity{
    let roomDescription:String
    switch capacity{
    case 5:
        roomDescription = "\(roomName)은 스터디룸이고 정원은 \(capacity)입니다"
    case 5...10:
        roomDescription = "\(roomName)은 스터디룸이고 정원은 \(capacity)입니다"
    case _ where capacity > 30:
        roomDescription = "관리자에게문의하세용"
    default:
        roomDescription = "\(roomName)의 정보를 다시 확인해주세요"
    }
}















