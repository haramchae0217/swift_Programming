//
//  main.swift
//  WorkSheet2
//
//  Created by Chae_Haram on 2022/03/21.
//

import Foundation

/*
 1. 인치로 된 제품의 크기를 입력받아서 cm로 출력하는 프로그램을 작성하시오. (1 inch = 2.54 cm)
 */
let inchSize = Double(readLine()!)!
let cmSize = inchSize * 2.54
print(cmSize)

/*
 2. 3개의 정수를 입력 받아서 합계와 평균, 최대값과 최소값을 구해서 출력하는 프로그램을 작성하시오. 단, 평균은 소수점 이하 두 자리까지 구하도록 한다.
 */
var number = readLine()
if let number = number {
    let array = number.components(separatedBy: " ")
    
    let sum = Int(array[0])! + Int(array[1])! + Int(array[2])!
    var avg = (Double(array[0])! + Double(array[1])! + Double(array[2])!) / 3.0
    avg = round(avg * 100) / 100
    let max = array.max()!
    let min = array.min()!
    print("세 정수의 합 : \(sum), 세 정수의 평균 : \(avg), 세 정수의 최댓값 : \(max), 세 정수의 최솟값 : \(min)")
}

