//
//  TestView.swift
//  mc2_git
//
//  Created by 차차 on 2023/05/12.
//

import Foundation
import SwiftUI

let questions = [
    "Q1",
    "Q2",
    "Q3",
    "Q4",
    "Q5"
]

let choices = [
    ["C1","C2"],
    ["C3","C4"],
    ["C5","C6"],
    ["C7","C8"],
    ["C9","C10"]
]

let theaters = [
    "광주극장",
    "광주독립영화관",
    "더숲아트시네마",
    "씨네아트리좀",
    "아트하우스모모",
    "안동중앙시네마",
    "에무시네마",
    "오오극장",
    "인디플러스포항",
    "인디플러스천안",
    "인천미림극장",
    "전주디지털독립영화관",
    "판타스틱큐브",
    "필름포럼",
    "헤이리시네마",
    "씨네큐브광화문",
    "오르페오한남",
    "라이카시네마",
    "모퉁이극장",
    "씨네인디U",
    "아리랑시네센터",
    "영화공간주안",
    "KT&G상상마당시네마",
    "KU시네마테크"
]

struct QuestionView: View {
    @Binding var num : Int
    @Binding var answers : [String]
    
    var body: some View {
        VStack {
            Text("\(questions[num])")
            Spacer()
            Button {
                answers.insert("\(num + 1)", at : num)
                // Move View
            } label : {
                Text("\(choices[num][0])")
            }
            Button {
                answers.insert("\(num + 2)", at : num)
                // Move View
            } label : {
                Text("\(choices[num][1])")
            }
        }
    }
}

//struct ResultView: View {
//    var body: some View {
//
//    }
//}

struct TestView: View {
    @State var num: Int
    @State var answers : [String] = []
    
    var body: some View{
        QuestionView(num: $num, answers: $answers)
    }
}
