//
//  main.swift
//  WorkSheet4
//
//  Created by Chae_Haram on 2022/04/04.
//

import Foundation


let randomInteger: [Int] = [38, 97, 25, 66, 90, 31, 16, 86, 33, 59]
var oddSum: Int = 0
var oddAvg: Double = 0.0
var oddCount: Int = 0
var evenSum: Int = 0
var evenAvg: Double = 0.0
var evenCount: Int = 0

for i in randomInteger {

    if i % 2 == 0{
        evenSum += i
        evenCount += 1
    } else {
        oddSum += i
        oddCount += 1
    }

}
evenAvg = Double(evenSum)/Double(evenCount)
oddAvg = Double(oddSum)/Double(oddCount)
print("짝수의 합 : \(evenSum), 짝수의 평균 : \(evenAvg)")
print("홀수의 합 : \(oddSum), 홀수의 평균 : \(oddAvg)")



var integers: String = readLine()!
var filterIntegers: [String] = []
var Aintegers = Set<String> ()
var Bintegers = Set<String> ()
var count: Int = 0

filterIntegers = integers.components(separatedBy: " ")

for i in filterIntegers {
    count += 1
    if count % 2 == 1 {
        Aintegers.insert(i)
    } else {
        Bintegers.insert(i)
    }
}
let subtracting = Aintegers.subtracting(Bintegers).sorted()
print("A집합 : \(Aintegers), B집합 : \(Bintegers)")
print("A집합과 B집합의 차집합 : \(subtracting)")

var greatKorean: [Int: String] = [111 : "이순신", 222 : "홍길동", 333 : "강감찬", 444 : "세종대왕", 555 : "을지문덕"]
var keys: [Int] = []

var inputKey: String = readLine()!
keys.append(Int(inputKey)!)

if keys[0] == 0 {
    for (greatKoreanKey, greatKoreanName) in greatKorean {
        print("\(greatKoreanKey) : \(greatKoreanName)")
    }
} else if keys[0] == 111 {
    print(greatKorean[111]!)
} else if keys[0] == 222 {
    print(greatKorean[222]!)
} else if keys[0] == 333 {
    print(greatKorean[333]!)
} else if keys[0] == 444 {
    print(greatKorean[444]!)
} else if keys[0] == 555 {
    print(greatKorean[555]!)
} else {
    print("존재하지 않는 key값입니다.")
}

/*
 1. 다음과 같은 10개의 요소를 가진 배열을 생성하고, 배열에서 짝수의 합과 평균, 홀수의 합과 평균을 구하는 프로그램을 작성하시오.
 
 38, 97, 25, 66, 90, 31, 16, 86, 33, 59
 
 * 실행결과
 짝수의 합 : 0000, 평균 : 0000
 홀수의 합 : 0000, 평균 : 0000
 */

/*
 2. 키보드로 입력받은 10개의 숫자를 교대로 A와 B Set에 저장하고, A - B를 구하여 출력하는 프로그램을 작성하시오.
 */

/*
 3. 다음의 테이블의 해당하는 Key, Value로 구성된 정보를 가지는 Dictionary를 생성하고, 실행시 0을 입력하면 전체 명단을 보여주고, Key값을 입력하면 해당하는 Value를 출력하는 프로그램을 작성하시오.
 */
