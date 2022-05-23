//
//  main.swift
//  WorkSheet10
//
//  Created by Chae_Haram on 2022/05/23.
//

import Foundation

enum Gender {
    case man
    case woman
    case none
}

/*
 1. '사람'을 나타내기 위한 클래스를 정의하시오.
 사람의 나이, 성별을 나타내는 프로퍼티와 '생각하다'라는 메소드를 추가하시오.
 */

class Person {
    var name: String
    var age: Int
    var gender: Gender
    
    init(name: String, age: Int, gender: Gender) {
        self.name = name
        self.age = age
        self.gender = .none
    }
    
    func thinking() {
    
    }
}

/*
 2. '사람' 클래스를 상속받아 ‘남자’를 나타내는 클래스와 ‘여자’를 나타내는 클래스를 각각 정의하시오.
 남자와 여자에 해당하는 각각의 프라퍼티를 3개 이상 정의하고, 각각의 이상향에 대한 정보를 저장할 수 있는 프로퍼티를 추가하시오.
 그리고 상속받은 '생각하다'라는 메소드를 각각의 이상향에 대해 판단하는 내용으로 override하여 수정하시오.
 */

class Man: Person {
    var height: Float
    var money: Int
    var car: Bool
    var idealWeight: Float
    var idealColor: String
    var idealLive: String
    
    init(name: String, age: Int, height: Float, money: Int, car: Bool, idealWeight: Float, idealColor: String, idealLive: String) {
        
        self.height = height
        self.money = money
        self.car = car
        self.idealWeight = idealWeight
        self.idealColor = idealColor
        self.idealLive = idealLive
        
        super.init(name: name, age: age, gender: .man)
    }
    
    override func thinking() {
        print("나의 이상형 \(idealWeight), \(idealColor), \(idealLive)")
    }
}

class Woman: Person {
    var weight: Float
    var color: String
    var live: String
    var idealHeight: Float
    var idealMoney: Int
    var idealCar: Bool
    
    init(name: String, age: Int, weight: Float, color: String, live: String, idealHeight: Float, idealMoney: Int, idealCar: Bool) {

        self.weight = weight
        self.color = color
        self.live = live
        self.idealHeight = idealHeight
        self.idealMoney = idealMoney
        self.idealCar = idealCar
        
        super.init(name: name, age: age, gender: .woman)
    }
   
    override func thinking() {
        print("나의 이상형 \(idealHeight), \(idealMoney), \(idealCar)")
    }
}

/*
 3. '남자' 클래스의 인스턴스와 '여자' 클래스의 인스턴스를 각각 5명 생성해서 이들을 적절한 collection 클래스에 저장하고, 이들의 이상향을 검사하는 프로그램을 작성하시오.
 이상향은 한 사람의 입장에서 5명의 이성에 대해서 '생각하다' 메소드를 통해 가장 많은 점수를 나타나는 이성을 선정하고, 이것이 서로 일치할 경우 커플로 선정한다.
 <실행결과>
 남자 : 홍길동(갑순이), 이순신(유관순), 을지문덕(신사입당), 세종대왕(퀴리부인), 궁예(장희빈)
 여자 : 갑순이(이순신), 신사임당(이순신), 퀴리부인(홍길동), 장희빈(세종대왕), 유관순(이순신)
 커플탄생 : (이순신, 유관순)
 */

// 이상향의 부합하는 기준이 무엇?
// 1개? or 과반수? or 전체? or 가장 가까운 사람?
// 이상향의 프로퍼티가 각각 클래스에 있어야하는건지

let 홍길동: Man = Man(name: "홍길동", age: 22, height: 173.3, money: 3000, car: false, idealWeight: 53.3, idealColor: "파랑", idealLive: "서울")
let 이순신: Man = Man(name: "이순신", age: 25, height: 175.5, money: 3300, car: false, idealWeight: 62.2, idealColor: "빨강", idealLive: "경기")
let 을지문덕: Man = Man(name: "을지문덕", age: 28, height: 177.7, money: 3600, car: false, idealWeight: 55.5, idealColor: "검정", idealLive: "부산")
let 세종대왕: Man = Man(name: "세종대왕", age: 31, height: 179.9, money: 3900, car: true, idealWeight: 57.7, idealColor: "하얀", idealLive: "인천")
let 궁예: Man = Man(name: "궁예", age: 34, height: 182.2, money: 4200, car: true, idealWeight: 59.9, idealColor: "초록", idealLive: "대군")

let 갑순이: Woman = Woman(name: "갑순이", age: 20, weight: 53.3, color: "파랑", live: "서울", idealHeight: 175.5, idealMoney: 3300, idealCar: false)
let 신사임당: Woman = Woman(name: "신사임당", age: 23, weight: 55.5, color: "검정", live: "부산", idealHeight: 175.5, idealMoney: 3300, idealCar: false)
let 퀴리부인: Woman = Woman(name: "퀴리부인", age: 26, weight: 57.7, color: "하얀", live: "인천", idealHeight: 173.3, idealMoney: 3000, idealCar: false)
let 장희빈: Woman = Woman(name: "장희빈", age: 29, weight: 59.9, color: "초록", live: "대구", idealHeight: 179.9, idealMoney: 3900, idealCar: true)
let 유관순: Woman = Woman(name: "유관순", age: 32, weight: 62.2, color: "빨강", live: "경기", idealHeight: 175.5, idealMoney: 3300, idealCar: false)

let manList: [Man] = [홍길동, 이순신, 을지문덕, 세종대왕, 궁예]
let womanList: [Woman] = [갑순이, 신사임당, 퀴리부인, 장희빈, 유관순]

/*
 남자 여자 리스트를 뽑아서
 각각 남자별 이상형 점수표 배열 -> ex) [유관순: 2, 장희빈: 1, 퀴리부인: 3] -> 퀴리부인이 이상형
 
 남자에 대해 for문을 돌리고 {
    여자에 대해 for문을 돌리고 {
        if 여자의 조건 == 남자의 이상형 조건 {
            count++
        }
    }
 }
 */

for woman in womanList {
    for man in manList {
        if woman.idealHeight == man.height && woman.idealMoney == man.money && woman.idealCar == man.car {
            print("\(woman)의 이상형은 \(man)")
        }
    }
}

//for woman in 0..<womanList.count {
//    for man in 0..<manList.count {
//        if woman.idealCar == man.car {
//            if var ideal = womanIdealCount[]
//        }
//    }
//}
