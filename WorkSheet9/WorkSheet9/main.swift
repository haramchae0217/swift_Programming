//
//  main.swift
//  WorkSheet9
//
//  Created by Chae_Haram on 2022/05/16.
//

import Foundation

/*
 1. 다음과 같은 프로퍼티와 초기값을 가지는 원, 사각형, 삼각형 클래스를 각각 정의하고, 인스턴스를 생성한 후, 어떤 도형의 면적이 가장 큰 지 판별하는 프로그램을 작성하시오
 
 ※  원 : 중심점(10,10), 반지름(5)
    사각형 : 최소점(5,5), 최대점(10,10)
    삼각형 : (1,1), (10,1), (5,10)
 
 ※ 실행결과 :
    원의 넓이 : 000
    삼각형의 넓이 : 000
    사각형의 넓이 : 000
    가장 넓은 도형은 000 입니다.
 */

class Circle {
    var radius = 5.0
    var pie = 3.14
}

class Square {
    var minX = 5.0, minY = 5.0
    var maxX = 10.0, maxY = 10.0
}

class Triangle {
    var coordinateX1 = 1.0 , coordinateY1 = 1.0
    var coordinateX2 = 10.0, coordinateY2 = 1.0
    var coordinateX3 = 5.0, coordinateY3 = 10.0
}

var area: [Double] = []
var sortArea: [Double] = []
let circle = Circle()
let square = Square()
let triangle = Triangle()

var circleArea = circle.radius * circle.radius * circle.pie
var squareArea = (square.maxX-square.minX) * (square.maxY-square.minY)

func distance(coordinateX1: Double, coordinateX2: Double, coordinateY1: Double, coordinateY2: Double) -> Double {
    let a: Double = coordinateX2 - coordinateX1
    let b: Double = coordinateY2 - coordinateY1
    let length = sqrt((a * a) + (b * b))
    
    return length
}

func areaCalc(circleArea: Double, triangleArea: Double, squareArea: Double) -> Double {
    area.append(circleArea)
    area.append(triangleArea)
    area.append(squareArea)
    
    sortArea = area.sorted(by: >)
    return sortArea[0]
}

var lengthA = distance(coordinateX1: triangle.coordinateX1, coordinateX2: triangle.coordinateX2, coordinateY1: triangle.coordinateY1, coordinateY2: triangle.coordinateY2)
var lengthB = distance(coordinateX1: triangle.coordinateX3, coordinateX2: triangle.coordinateX2, coordinateY1: triangle.coordinateY3, coordinateY2: triangle.coordinateY2)
var lengthC = distance(coordinateX1: triangle.coordinateX3, coordinateX2: triangle.coordinateX1, coordinateY1: triangle.coordinateY3, coordinateY2: triangle.coordinateY1)

var triangleArea = round((lengthA + lengthB + lengthC) / 2)

var mostArea = areaCalc(circleArea: circleArea, triangleArea: triangleArea, squareArea: squareArea)

print("원의 넓이 : \(circleArea)")
print("삼각형의 넓이 : \(triangleArea)")
print("사각형의 넓이 : \(squareArea)")
print(mostArea)
