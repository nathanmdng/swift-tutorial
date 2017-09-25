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

// print a square -> 3
//
// ###
// ###
// ###

func printSquare(size: Int) {
    let row = String(repeating: "*", count: size)
    for _ in 1 ... size {
        print(row)
    }
}

// prints a triangle -> 4
//
// #
// ##
// ###
// ####

func printTriangle(rows: Int) {
    for i in 1 ... rows {
        let row = String(repeating: "#", count: i)
        print(row)
    }
}

func printTriangle2(rows: Int) {
    var row = ""
    for _ in 0 ... rows - 1 {
        row.append("#")
        print(row)
    }
}

print("half triangle 1")
printTriangle(rows: 10)

print("half triangle 2")
printTriangle2(rows: 10)

// print a half diamond -> 7
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

func printHalfDiamond3(rows: Int) {
    var row = ""
    let halfway = rows / 2
    for i in 0 ... rows - 1 {
        if i <= halfway {
            row.append("#")
            print(row)
        } else {
            let index = row.index(row.startIndex, offsetBy: row.characters.count - 1)
            row = row.substring(to: index)
            print(row)
        }
    }
}

print("half diamond")
printHalfDiamond(rows: 11)

print("half diamond 2")
printHalfDiamond2(rows: 9)

print("half diamond 3")
printHalfDiamond3(rows: 7)

// Print a spaced triangle
//
//  *   |2-1-2 0
// ***  |1-3-1 1
//***** |0-5-0 2

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

// factorial 5! = 120

func factorial(number: Int) -> Int {
    var output = 1
    for i in 1 ... number {
        output *= i
    }
    return output
}

print(factorial(number: 5))

// determine if a number is prime

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

// get first 100 prime numbers

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
