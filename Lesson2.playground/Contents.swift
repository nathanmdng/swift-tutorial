//: Playground - noun: a place where people can play

import UIKit

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