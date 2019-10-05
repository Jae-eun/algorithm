//
//  backjoon_1598.swift
//  algo
//
//  Created by 이재은 on 06/10/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

//backjoon 1598 꼬리를 무는 숫자 나열
//
//동물원에서 막 탈출한 원숭이 한 마리가 세상구경을 하고 있다. 그 녀석은 원주 부근을 돌아다니다가 코레스코 콘도에서 아주 재밌는 놀이를 발견했다. 그 놀이의 이름은 바로 “꼬리를 무는 숫자 나열”. 이제부터 원숭이가 그토록 좋아하던 그 놀이를 파헤쳐보자.
//
//놀이의 방법은 간단하다. 일단 4줄짜리 표에 왼쪽부터 숫자를 아래로 1부터 순서대로 적어나간다. 다음에 그 예가 잘 나타나있다.
//
//
//
//이제 원숭이는 두 개의 자연수를 아무거나 생각한다. 그리고 숫자판에서 두 개의 자연수 사이의 직각거리를 구하면 된다. 여기서 직각거리는 동서방향거리와 남북방향거리의 합을 뜻한다.
//
//예를 들어 저 숫자판에서 11과 33을 생각했다고 하자. 그렇다면 11과 33사이의 직각거리는 8이 된다.(동서방향거리 : 6, 남북방향거리 : 2) 다음 그림에 잘 나타나있다.
//
//
//
//하지만 원숭이는 지금 혼란스럽다. 동물원에서 탈출한지 얼마 되지 않아서 계산을 할 수 없는 경지에 이르렀다. 여러분이 불쌍한 원숭이를 좀 도와줘야겠다. 원숭이가 생각한 두 자연수 사이의 직각거리를 구하는 프로그램을 작성하시오.
//
//입력
//첫째 줄에 원숭이가 생각한 두 개의 자연수가 주어진다. 각 숫자는 10,000,000 이하이다.
//
//출력
//첫째 줄에 원숭이가 생각한 두 개의 자연수 사이의 직각거리를 출력한다.

let num = readLine()!.split(separator: " ").map { Int($0)! }
var x = [Int]()
var y = [Int]()

for n in num {
    if n % 4 == 0 {
        x.append(n / 4)
        y.append(4)
    } else {
        x.append(n / 4 + 1)
        y.append(n % 4)
    }
}
let distance = abs(x[0] - x[1]) + abs(y[0] - y[1])
print(distance)

//11 33
//답
//8

//12 15
//답
//2
