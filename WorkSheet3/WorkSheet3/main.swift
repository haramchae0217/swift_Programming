//
//  main.swift
//  WorkSheet3
//
//  Created by Chae_Haram on 2022/03/28.
//

import Foundation

/*
 1. 문자열에서 공백 문자를 모두 제거하는 프로그램을 작성하시오.
 프로그램의 실행 결과는 다음과 같아이한다.
 
 출력 예시)
 문자열을 입력하세요 : This is string test program
 변경 후 문자열 : Thisisstringtestprogram
 */

let beforeString: String = readLine()!
var filterString: [String] = []
var afterString: String = ""

filterString = beforeString.components(separatedBy: " ")

for i in filterString {
    afterString += i
}
print(afterString)

/*
 2. 문자열을 입력 받아 각 단어의 첫 글자를 대문자로 변경하는 프로그램을 작성하시오.
 프로그램의 실행 결과는 다음과 같아야 한다.
 
 출력 예시)
 문자열을 입력하세요 : This is string test program
 변경 후 문자열 : This Is String Test Program
 */

let firstString: String = readLine()!
var filteringString: [String] = []
var secondString: String = ""

filteringString = firstString.components(separatedBy: " ")

for i in filteringString {
    secondString += i.prefix(1).uppercased() + i.dropFirst() + " "
}
print(secondString)


