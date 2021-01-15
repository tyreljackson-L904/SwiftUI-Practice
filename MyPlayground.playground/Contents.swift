import SwiftUI


/// TUPLES

let specialDate = (6, 3, 2019, "WWDC")

let newSpecialDate: (Int, Int, Int, String) = (6, 3, 2019, "WWDC")

// better format/syntax
let namedSpecialDate = (month: 6, day: 3, year: 2019, name: "WWDC")

// set data to constants in a single line. (_) ignores params you dont want to set
let (_, keynoteDay, _, keynoteDescription) = namedSpecialDate

// assign variables and assign one of the param to a new value
var iPhoneDay = (month: 9, day: 10, year: 2019, name: "iPhoneDay")
iPhoneDay.name = "special deals" // call the new value using the name of the var you want to change followed by the name of the value then assign the new value.



/// ARRAYS

// create an empty array of the type String
var pastries: [String] = []

// add values to the empty pastries array
pastries.append("cookie")
pastries.append("danish")
pastries += ["cupcake", "donut"]

// access a section of an array by using a range
let firstThree = pastries[1...3]

// cast values from original array to new array
let newArray = Array(pastries[1...3])

print(newArray)

var players = ["Alice", "Bob", "Dan", "Eli", "Frank"]
players.count
players.contains("Charles")
players.first
players.last
players.insert("Charles", at: 2)
let newPlayers = ["Gloria", "Hermione"]
players.append(contentsOf: newPlayers)

let teamOne = Array(players[4...7])



/// LOOPS

var i = 1
while i < 10 {
    print(i)
    i += 1
}

//var count = 0
//while count < 10 {
//    print(count)
//    count += 1
//}

var count = 10
repeat {
    print("counting down \(count)")
    count -= 1
} while count > 0

var rollCount = 0
var roll = 0
repeat {
    roll = Int.random(in: 1...6)
    rollCount += 1
    print("Roll \(rollCount) give you a \(roll)")
} while roll != 6



/// FOR LOOPS

let closedRange = 0...5
let halfOpenRange = 0..<5

var sum = 0
let count1 = 10
for i in 1...count1 {
    sum += i
}
print(sum)

for i in 1...100 where i % 5 == 0 {
    print(i)
}

let rangeStart = 10
for rangeValue in rangeStart..<rangeStart + 3 {
    print(rangeValue)
}

var randomVount = Int.random(in: 1...5)
for _ in 1...randomVount {
    print("Tyrel")
}




/// ITERATING COLLECTIONS

//let daysOfTheWeek: [String] = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
//let poolTemps: [Int] = [78, 81, 74, 80, 79, 83, 84]

//for i in 0..<daysOfTheWeek.count where poolTemps[i] >= 80{
//    print("\(daysOfTheWeek[i]): \(poolTemps[i])")
//}

var pastriesList: [String] = ["cookie", "danish", "cupcake", "donut", "pie", "brownie", "fritter", "cruller"]

///**************GOOD TO REMEMBER**********
// find the values inside pastriesList where the pastry name starts with "c"
for pastry in pastriesList {
    if pastry[pastry.startIndex] == "c" {
        print(pastry)
    }
}

for pastry in pastriesList where pastry[pastry.startIndex] == "c" {
    print(pastry)
}
///***************************************

// how to exit a loop using a break statement
let daysOfTheWeek: [String] = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
let poolTemps: [Int] = [78, 81, 74, 80, 79, 83, 84]

for i in 0..<daysOfTheWeek.count {
    if daysOfTheWeek[i] == "Thursday" {
        break
    }
    print("\(daysOfTheWeek[i]): \(poolTemps[i])")
}

// Nested for loops
for floor in 11...15 {
    for room in 1...4 {
        print("\(floor)-\(room)")
    }
}
