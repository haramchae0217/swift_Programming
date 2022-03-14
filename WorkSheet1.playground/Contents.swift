import UIKit


/*
 1. 원가가 1,000원인 과자를 1,300원에 25개를 팔았다. 총 판매액과 판매이익을 출력하는 프로그램을 작성하시오.


 ※ 실행결과
  총 판매액: 00000000원
  판매이익: 000000000원
 ⇒ 프로그램 코드:

 */
let snackPriceOriginal: Int = 1000
let snackPriceUp: Int = 1300
let numberOfSell: Int = 25
let totalSell: Int = snackPriceUp * numberOfSell
let originalSell: Int = snackPriceOriginal * numberOfSell
let sellProfit: Int = totalSell - originalSell

print("총 판매액: \(totalSell) 원")
print("판매 이익: \(sellProfit)")

/*
 2. 홍길동의 4과목 성적이 국어=89, 수학=98, 영어=87, 과학=88이다. name 변수에 “홍길동”을 저장하고, 평균을 구하여 출력하는 프로그램을 실행결과를 참조하여 작성하시오.

 ※ 실행결과
 홍길동의 평균은 00.00입니다.
 ⇒ 프로그램 소스코드:

 */

var name: String = "홍길동"
let kor: Int = 89
let mat: Int = 98
let eng: Int = 87
let sci: Int = 88

let avg: Double = (Double)(kor+mat+eng+sci)/4.0

print("\(name)의 평균은 \(avg)입니다.")

/*
 3. 여러분의 컴퓨터에서 다음 값을 프로그램을 이용하여 구하시오.


     INT8의  최소값:                최대값:
     INT16의 최소값:                최대값:
     INT32의 최소값:                최대값:
     UINT8의 최대값:
     UINT16의 최대값:
     UINT32의 최대값:

 */

let minInt8Value = Int8.min
let maxInt8Value = Int8.max
let minInt16Value = Int16.min
let maxInt16Value = Int16.max
let minInt32Value = Int32.min
let maxInt32Value = Int32.max
let maxUInt8Value = UInt8.max
let maxUInt16Value = UInt16.max
let maxUInt32Value = UInt32.max

print("INT8의 최소값 : \(minInt8Value) 최대값 : \(maxInt8Value)")
print("INT16의 최소값 : \(minInt16Value) 최대값 : \(maxInt16Value)")
print("INT32의 최소값 : \(minInt32Value) 최대값 : \(maxInt32Value)")
print("UINT8의 최대값 : \(maxUInt8Value)")
print("UINT16의 최대값 : \(maxUInt16Value)")
print("UINT32의 최대값 : \(maxUInt32Value)")



//// 1.
//let snackPriceOriginal: Int = 1000
//let snackPriceUp: Int = 1300
//let numberOfSell: Int = 25
//let totalSell: Int = snackPriceUp * numberOfSell
//let originalSell: Int = snackPriceOriginal * numberOfSell
//let sellProfit: Int = totalSell - originalSell
//
//print("총 판매액: \(totalSell) 원")
//print("판매 이익: \(sellProfit)")
//
//// 2.
//var name: String = "홍길동"
//let kor: Int = 89
//let mat: Int = 98
//let eng: Int = 87
//let sci: Int = 88
//
//let avg: Double = (Double)(kor+mat+eng+sci)/4.0
//
//print("\(name)의 평균은 \(avg)입니다.")
//
//// 3.
//let minInt8Value = Int8.min
//let maxInt8Value = Int8.max
//let minInt16Value = Int16.min
//let maxInt16Value = Int16.max
//let minInt32Value = Int32.min
//let maxInt32Value = Int32.max
//let maxUInt8Value = UInt8.max
//let maxUInt16Value = UInt16.max
//let maxUInt32Value = UInt32.max
//
//print("INT8의 최소값 : \(minInt8Value) 최대값 : \(maxInt8Value)")
//print("INT16의 최소값 : \(minInt16Value) 최대값 : \(maxInt16Value)")
//print("INT32의 최소값 : \(minInt32Value) 최대값 : \(maxInt32Value)")
//print("UINT8의 최대값 : \(maxUInt8Value)")
//print("UINT16의 최대값 : \(maxUInt16Value)")
//print("UINT32의 최대값 : \(maxUInt32Value)")
