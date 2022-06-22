//
//  main.swift
//  WorkSheet8
//
//  Created by Chae_Haram on 2022/05/09.
//

import Foundation

/*
 1. 다음 프로그램이 실행 가능하도록 부족한 부분을 채워 완성하시오.
 */

enum compassPoint {
    case north
    case south
    case east
    case west
}

var directionToHead = compassPoint.east
directionToHead = .south

switch directionToHead {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}

/*
 2. 위의 프로그램을 참조하여 두 수와 연산 기호를 입력받고 사칙연산을 Enumeration과 Swith를 매치하는 프로그램을 작성하시오.
 */

indirect enum calc {
    case number(Int)
    case plus(calc, calc)
    case minus(calc, calc)
    case multiple(calc, calc)
    case divide(calc, calc)
}

var input = readLine()!
var expression: [String] = []
expression = input.components(separatedBy: " ")

let firstNumber = calc.number(Int(expression[0])!)
let secondNumber = calc.number(Int(expression[2])!)
var result: calc = .plus(firstNumber, secondNumber)
if expression[1] == "+" {
    let plus = calc.plus(firstNumber, secondNumber)
    result = plus
} else if expression[1] == "-" {
    let minus = calc.minus(firstNumber, secondNumber)
    result = minus
} else if expression[1] == "*" {
    let multiple = calc.multiple(firstNumber, secondNumber)
    result = multiple
} else if expression[1] == "/" {
    let divide = calc.divide(firstNumber, secondNumber)
    result = divide
}

func evaluate(_ calculate: calc) -> Int {
    switch calculate {
    case let .number(value):
        return value
    case let .plus(lhs, rhs):
        return evaluate(lhs) + evaluate(rhs)
    case let .minus(lhs, rhs):
        return evaluate(lhs) - evaluate(rhs)
    case let .multiple(lhs, rhs):
        return evaluate(lhs) * evaluate(rhs)
    case let .divide(lhs, rhs):
        if Int(expression[2])! == 0 {
            print("0으로 나눌 수 없습니다.")
            return 0
        } else {
            return evaluate(lhs) / evaluate(rhs)
        }
    }
}

print(evaluate(result))


enum Planet: Int {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

let positionToFind = 11

if let somePlanet = Planet(rawValue: positionToFind) {
    switch somePlanet {
    case .earth :
        print("mostly harmless")
    default:
        print("not a safe place for humans")
    }
} else {
    print("there isn't a planet at position \(positionToFind)")
}
