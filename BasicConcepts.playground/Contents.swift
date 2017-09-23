//: Playground - noun: a place where people can play

import UIKit

func printTest(string: String, times: Int) {
    for i in 0 ... times {  // 0, 1, 2, 3, 4
        print("hello \(string) \(i)")
    }
}

printTest(string: "Ruth", times: 8)

func testingLessThan(number: Int) {
    if number > 10 {
        print("greater than 10")
    } else {
        print("less than 10")
    }
}

testingLessThan(number: 12)
testingLessThan(number: 7)

// print a square
// ###
// ###
// ###

func printSquare(size: Int) {
    for _ in 1 ... size {
        let row = String(repeating: "*", count: size)
        print(row)
    }
}

// print a triangle

func printTriangle(rows: Int) {
    for i in 1 ... rows {
        let row = String(repeating: "#", count: i)
        print(row)
    }
}

func printTriangle2(rows: Int) {
    for i in 1 ... rows {
        var row = ""
        for _ in 1 ... i {
            row.append("#")
        }
        print(row)
    }
}

print("half triangle 1")
printTriangle(rows: 10)

print("half triangle 2")
printTriangle2(rows: 10)

// print half diamond

// half diamond
//
// #
// ##
// ###
// ####
// ###
// ##
// #

func printHalfDiamond(rows: Int) {
    let halfway = rows / 2
    for i in 1 ... halfway {
        let row = String(repeating: "#", count: i)
        print(row)
    }
    for i in halfway ... rows {
        let row = String(repeating: "#", count: rows - i)
        print(row)
    }
}

func printHalfDiamond2(rows: Int) {
    let halfway = rows / 2 + 1
    for i in 1 ... rows {
        var row = ""
        if i <= halfway {
            row = String(repeating: "#", count: i)
        } else {
            row = String(repeating: "#", count: rows - i + 1)
        }
        print(row)
    }
}

print("half diamond")
printHalfDiamond(rows: 11)

print("half diamond2")
printHalfDiamond2(rows: 9)


//  *  |2-1-2 0
// *** |1-3-1 1
//*****|0-5-0 2

func printSpacedTriangle(rows: Int) {
    if (rows % 2 == 1) {
        let base = rows * 2 - 1     // 5
        var spaces = base / 2       // 5/2 = 2
        for _ in 0 ... rows - 1 {   // 0, 1, 2
            var row = ""
            if spaces > 0 {
                for _ in 0 ... spaces - 1 {
                    row.append(" ")
                }
            }
            for _ in 1 ... base - 2 * spaces {
                row.append("*")
            }
            spaces -= 1
            print(row)
        }
    } else {
        print("need an odd number")
    }
}

printSpacedTriangle(rows: 3)


func isPrime(number: Int) -> Bool {
    if (number <= 1) {
        return false
    } else if (number == 2) {
        return true
    }
    for i in (2 ... number-1).reversed() {
        if (number % i == 0) {
            return false
        }
    }
    return true
}

func getPrimes(limit: Int) -> [Int] {
    var primes = [Int]()
    for i in 1 ... limit {
        if (isPrime(number: i)) {
            primes.append(i)
        }
    }
    return primes
}

isPrime(number: 2)
isPrime(number: 13)
isPrime(number: 15)
isPrime(number: 17)
print(getPrimes(limit: 100))


func calculateBinary(value: String) -> Decimal {
    let length = value.characters.count
    var sum: Decimal = 0
    for i in 0 ... length - 1 {
        let bit = value.characters.reversed()[i]
        if (bit == "1") {
            sum += pow(2, i)
        }
    }
    return sum
}

print(calculateBinary(value: "1010"))

func rockPaperScissors(value: String) {
    let letters = Array(value.characters)
    let games = value.characters.count
    var aWins = 0
    var bWins = 0
    for i in stride(from: 0, to: games, by: 2) {
        let playerA = letters[i]
        let playerB = letters[i + 1]
        let winner = whoWins(a: playerA, b: playerB)
        if (winner == 1) {
            print("A wins")
            aWins += 1
        } else if (winner == 2) {
            print("B wins")
            bWins += 1
        } else {
            print("draw")
        }
    }
    if (aWins > bWins) {
        print("A wins tournament")
    } else if (bWins > aWins) {
        print("B wins tournament")
    } else {
        print("Tournament is a draw")
    }
}

func whoWins(a: Character, b: Character) -> Int {
    if a == "R" && b == "P" {
        return 2
    } else if a == "R" && b == "S" {
        return 1
    } else if a == "P" && b == "S" {
        return 2
    } else if a == "P" && b == "R" {
        return 1
    } else if a == "S" && b == "R" {
        return 2
    } else if a == "S" && b == "P" {
        return 1
    }
    return 0
}

rockPaperScissors(value: "RRRSSRSPPPPSRP")
