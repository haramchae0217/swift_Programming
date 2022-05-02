//
//  main.swift
//  WorkSheet7
//
//  Created by Chae_Haram on 2022/05/02.
//

import Foundation

/*
 1. 다음 프로그램을 참조하여 오름차순으로 정렬하고, 정렬된 결과를 출력하는 프로그램을 완성하시오.
 */
let names = ["Chris","Alex","Ewa","Barry","Daniella"]

func forward(_ s1: String, _ s2: String) -> Bool {
    return s1 < s2
}
var forwardNames1 = names.sorted(by: forward)
print(forwardNames1)

/*
 2. 다음 프로그램을 참조하여 위의 프로그램을 closure expression을 사용하도록 개선하시오.
 */
var forwardNames2 = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 < s2
})
print(forwardNames2)

/*
 3. 다음 프로그램을 참조하여 위의 프로그램의 closure expression을 더 단축할 수 있도록 개선하시오.
 */
var forwardNames3 = names.sorted(by: { s1, s2 in return s1 < s2 })
print(forwardNames3)

/*
 4. 다음 프로그램을 참조하여 위의 프로그램의 closure expression을 더 단축할 수 있도록 개선하시오.
 */
var forwardNames4 = names.sorted(by: { s1,s2 in s1 < s2 })
print(forwardNames4)

/*
 5. 다음 프로그램을 참조하여 위의 프로그램을 자동으로 제공되는 Argument 이름을 사용하도록 개선하시오.
 */
var forwardNames5 = names.sorted(by: { $0 < $1 })
print(forwardNames5)

/*
 6. 다음 프로그램을 참조하여 위의 프로그램을 operator method를 사용하여 개선하시오.
 */
var forwardNames6 = names.sorted(by: <)
print(forwardNames6)
