//
//  main.swift
//  WorkSheet6
//
//  Created by Chae_Haram on 2022/04/25.
//

import Foundation

/*
 1. 인자도 없고, 리턴값도 없이 호출하면 "hello" 문자열을 화면에 출력하는 함수를 정의하고, 이를 10번 호출하는 프로그램을 작성하시오.
 */

func printHello() {
    print("hello")
}

var count: Int = 0

while count<10 {
    printHello()
    count += 1
}

/*
 2. 키보드로부터 입력받은 두 수를 인수로 넘겨주면 첫 번째 인수를 두 번째 인수로 나눈 몫과 나머지 모두를 리턴하는 함수를 작성하시오. 리턴값을 메인함수에서 받아 화면에 출력하시오.
 */

var inputInt = readLine()!
var arr: [String] = []
arr = inputInt.components(separatedBy: " ")
var value1: Int = Int(arr[0])!
var value2: Int = Int(arr[1])!

func devideRemCalc(num1: Int, num2: Int) -> (Int,Int) {
    let resultDivide = num1 / num2
    let resultRem = num1 % num2
    return (resultDivide,resultRem)
}

print(devideRemCalc(num1: value1, num2: value2))

/*
 3. 키보드로부터 입력받은 두 수를 인수로 넘겨주면 두 수의 사칙연산 결과를 출력하는 Calculate함수를 작성하시오. (단, +,-,*,/ 을 수행하는 네 개의 함수를 Calculate함수의 내포함수로 각각 작성하시오.)
 */

var inputInt1 = readLine()!
var arr1: [String] = []
arr1 = inputInt1.components(separatedBy: " ")
var value3: Int = Int(arr1[0])!
var value4: Int = Int(arr1[1])!

func Calculate(num1: Int, num2: Int) -> (Int,Int,Int,Double) {

    func plus(num1: Int, num2: Int) -> Int {
        let resultPlus = num1 + num2
        return resultPlus
    }

    func minus(num1: Int, num2: Int) -> Int {
        let resultMinus = num1 - num2
        return resultMinus
    }

    func multiplication(num1: Int, num2: Int) -> Int {
        let resultMultiplication = num1 * num2
        return resultMultiplication
    }

    func division(num1: Int, num2: Int) -> Double {
        let resultDivision = Double(num1) / Double(num2)
        return resultDivision
    }

    return (plus(num1: value3, num2: value4), minus(num1: value3, num2: value4), multiplication(num1: value3, num2: value4), division(num1: value3, num2: value4))

}

print(Calculate(num1: value3, num2: value4))

