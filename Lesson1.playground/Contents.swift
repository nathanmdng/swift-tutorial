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
        if i <= halfway {
            print(String(repeating: "#", count: i))
        } else {
            print(String(repeating: "#", count: rows - i + 1))
        }
    }
}

func printHalfDiamond3(rows: Int) {
    var row = ""
    let halfway = rows / 2
    for i in 0 ... rows - 1 {
        if i <= halfway {
            row.append("#")
        } else {
            let index = row.index(row.startIndex, offsetBy: row.characters.count - 1)
            row = row.substring(to: index)
        }
        print(row)
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
//   *    | 3-1
//  ***   | 2-3
// *****  | 1-5
//******* | 0-7

func printSpacedTriangle(rows: Int) {
    for i in 0 ... rows - 1 {
        let width = 2 * i + 1
        let spaceAmount = rows - i - 1
        let space = String(repeating: " ", count: spaceAmount)
        let stars = String(repeating: "*", count: width)
        print("\(space)\(stars)")
    }
}

printSpacedTriangle(rows: 4)

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
    for i in 2 ... number - 1 {
        if (number % i == 0) {
            return false
        }
    }
    return true
}

func isPrime2(number: Int) -> Bool {
    if (number <= 1) {
        return false
    } else if (number == 2) {
        return true
    }
    var i = 2
    let max = Int(ceil(sqrt(Double(number))))
    while (i < max + 1) {
        if (number % i == 0) {
            return false
        }
        i += 1
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
