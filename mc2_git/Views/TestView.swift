//
//  TestView.swift
//  mc2_git
//
//  Created by 차차 on 2023/05/12.
//

// import Foundation
import SwiftUI

let theaters = [
    "라이카시네마",
    "에무시네마",
    "인디플러스포항",
    "KU시네마테크", // Q5 일반 영화관
    "오오극장",
    "오르페오한남",
    "씨네큐브광화문",
    "판타스틱큐브"// Q5 아이맥스
]

struct Q1 : View {
    var body: some View {
            NavigationView {
                VStack {
                            Text("🎬 영화가 땡기는 주말, 당신은? 😎")
                                .font(.largeTitle)
                                
                            NavigationLink(destination: Q2()) {
                                ZStack {
                                        Text("🏃‍♂️ 바로 근처 영화관으로 달려간다 🏃‍♂️")
                                            .fixedSize(horizontal: false, vertical: true)
                                            .multilineTextAlignment(.center)
                                            .padding()
                                            .frame(width: 350, height: 120)
                                            .foregroundColor(Color.white)
                                            .background(Rectangle().fill(Color.blue).shadow(radius: 3).cornerRadius(19))
                                }
                            }
                                    
                                    
                            NavigationLink(destination: Q2()) {
                                ZStack {
                                        Text("🎫 예매 사이트에서 보고 싶은 영화가 있는지 확인한다 🎫")
                                            .fixedSize(horizontal: false, vertical: true)
                                            .multilineTextAlignment(.center)
                                            .padding()
                                            .frame(width: 350, height: 120)
                                            .foregroundColor(Color.white)
                                            .background(Rectangle().fill(Color.blue).shadow(radius: 3).cornerRadius(19))
                                    }
                            }
                        }
            }
            .navigationBarBackButtonHidden()
        }
}

struct Q2 : View {
    var body: some View {
            NavigationView {
                VStack {
                            Text("🏖️ 간만에 생긴 자유시간, 당신이라면? 😜")
                                .font(.largeTitle)
                                
                            NavigationLink(destination: Q3()) {
                                ZStack {
                                        Text("🏝️ 혼자서도 잘 놀아요, 나만의 시간을 갖는다 ⌛️")
                                            .fixedSize(horizontal: false, vertical: true)
                                            .multilineTextAlignment(.center)
                                            .padding()
                                            .frame(width: 350, height: 120)
                                            .foregroundColor(Color.white)
                                            .background(Rectangle().fill(Color.blue).shadow(radius: 3).cornerRadius(19))
                                }
                            }
                                    
                                    
                            NavigationLink(destination: Q3()) {
                                ZStack {
                                        Text("😢 혼자는 외로워, 친구들에게 연락한다 📱")
                                            .fixedSize(horizontal: false, vertical: true)
                                            .multilineTextAlignment(.center)
                                            .padding()
                                            .frame(width: 350, height: 120)
                                            .foregroundColor(Color.white)
                                            .background(Rectangle().fill(Color.blue).shadow(radius: 3).cornerRadius(19))
                                    }
                            }
                        }
            }
            .navigationBarBackButtonHidden()
        }
}

struct Q3 : View {
    var body: some View {
            NavigationView {
                VStack {
                            Text("🔥 요즘 가장 핫한 영화를 보고 난 뒤, 당신의 행동은? 😙")
                                .font(.largeTitle)
                                
                            NavigationLink(destination: Q4()) {
                                ZStack {
                                        Text("📱 SNS에 자랑하기 👍")
                                            .fixedSize(horizontal: false, vertical: true)
                                            .multilineTextAlignment(.center)
                                            .padding()
                                            .frame(width: 350, height: 120)
                                            .foregroundColor(Color.white)
                                            .background(Rectangle().fill(Color.blue).shadow(radius: 3).cornerRadius(19))
                                }
                            }
                                    
                                    
                            NavigationLink(destination: Q4()) {
                                ZStack {
                                        Text("📸 사진 찍어 혼자 간직하기 ❤️")
                                            .fixedSize(horizontal: false, vertical: true)
                                            .multilineTextAlignment(.center)
                                            .padding()
                                            .frame(width: 350, height: 120)
                                            .foregroundColor(Color.white)
                                            .background(Rectangle().fill(Color.blue).shadow(radius: 3).cornerRadius(19))
                                    }
                            }
                        }
            }
            .navigationBarBackButtonHidden()
        }
}

struct Q4 : View {
    var body: some View {
            NavigationView {
                VStack {
                            Text("👨‍🚒 영화 시작 전, 화재 시 대피 요령을 본 당신의 머릿속에는? 🤔")
                                .font(.largeTitle)
                                
                            NavigationLink(destination: Q5()) {
                                ZStack {
                                        Text("🚨 영화관에 불이 나면 어떡하지... 🧠")
                                            .fixedSize(horizontal: false, vertical: true)
                                            .multilineTextAlignment(.center)
                                            .padding()
                                            .frame(width: 350, height: 120)
                                            .foregroundColor(Color.white)
                                            .background(Rectangle().fill(Color.blue).shadow(radius: 3).cornerRadius(19))
                                }
                            }
                                    
                                    
                            NavigationLink(destination: Q5()) {
                                ZStack {
                                        Text("❓ 영화 언제 시작하지? 빨리 시작해라 💤")
                                            .fixedSize(horizontal: false, vertical: true)
                                            .multilineTextAlignment(.center)
                                            .padding()
                                            .frame(width: 350, height: 120)
                                            .foregroundColor(Color.white)
                                            .background(Rectangle().fill(Color.blue).shadow(radius: 3).cornerRadius(19))
                                    }
                            }
                        }
            }
            .navigationBarBackButtonHidden()
        }
}

struct Q5 : View {
    @State var answer : Bool = true
    var body: some View {
            NavigationView {
                VStack {
                            Text("🪐 크리스토퍼 놀란의 신작이 아이맥스로 촬영됐다던데...? 🦇")
                                .font(.largeTitle)
                                
                    NavigationLink(destination: ResultView(answer: $answer)) {
                                ZStack {
                                        Text("🎥 당연히 용∙아∙맥이지~ 🐉")
                                            .fixedSize(horizontal: false, vertical: true)
                                            .multilineTextAlignment(.center)
                                            .padding()
                                            .frame(width: 350, height: 120)
                                            .foregroundColor(Color.white)
                                            .background(Rectangle().fill(Color.blue).shadow(radius: 3).cornerRadius(19))
                                }
                    }
                    .simultaneousGesture(TapGesture().onEnded{
                                answer = true
                    })
                                    
                                    
                    NavigationLink(destination: ResultView(answer: $answer)) {
                                ZStack {
                                        Text("😭 예매하기 빡쎄다던데... 그냥 일반 영화관에서 봐야겠다 🎭")
                                            .fixedSize(horizontal: false, vertical: true)
                                            .multilineTextAlignment(.center)
                                            .padding()
                                            .frame(width: 350, height: 120)
                                            .foregroundColor(Color.white)
                                            .background(Rectangle().fill(Color.blue).shadow(radius: 3).cornerRadius(19))
                                    }
                    }
                    .simultaneousGesture(TapGesture().onEnded{
                                answer = false
                    })
                }
            }
            .navigationBarBackButtonHidden()
        }
}

struct ResultView: View {
    @Binding var answer : Bool
    @State var randomInd : Int = 0
    var body: some View {
        VStack {
            Text("당신의 취향은 ... \(theaters[randomInd])")
                .bold()
        }
        .onAppear{
            if answer == true {
                randomInd = Int.random(in: 0..<4)
            }
            else {
                randomInd = Int.random(in: 4..<8)
            }
        }
    }
}

struct TestView: View {
    @State var num: Int
    @State var answers : String = ""
    
    var body: some View{
        Q1()
    }
}
