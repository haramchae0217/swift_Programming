//
//  main.swift
//  WorkSheet5
//
//  Created by Chae_Haram on 2022/04/11.
//

import Foundation

/*
 1. 키보드로부터 정수 10개를 입력받아서 배열에 저장하시오. 배열에서 전체 수의 합계와 홀수의 합계, 짝수의 합계를 각각 구해서 출력하시오.
*/

var integer: [String] = []
var input: String = ""
var total: Int = 0
var oddTotal: Int = 0
var evenTotal: Int = 0

print("정수 10개를 입력하시오. : ")
input = readLine()!

integer = input.components(separatedBy: " ")

for i in integer {
    total += Int(i)!
    if Int(i)! % 2 == 0 {
        evenTotal += Int(i)!
    }
    else {
        oddTotal += Int(i)!
    }
}
print("배열 전체의 합 : \(total), 홀수의 합 : \(oddTotal), 짝수의 합 : \(evenTotal)")

/*
 2. 정수를 입력 받아 짝수인지 홀수인지를 출력하는 프로그램을 Switch 구문을 이용하여 작성하시오. 참고로 0은 짝수도 홀수도 아니다.
*/

var input2: String = ""
var integer2: Int = 0
var switchCondition: Int = 0

input2 = readLine()!
integer2 = Int(input2)!

if integer2 == 0 {
    switchCondition = 0
} else if integer2 % 2 == 0 {
    switchCondition = 1
} else if integer2 % 2 == 1 {
    switchCondition = 2
} else {
    print("올바르지 않은 수 입력")
}

switch switchCondition {
case 1 :
    print("입력한 정수는 짝수입니다.")
case 2:
    print("입력한 정수는 홀수입니다.")
default:
    print("입력한 수는 0입니다. 짝수도 홀수도 아닙니다")
}
