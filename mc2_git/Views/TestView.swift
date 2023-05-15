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
    "판타스틱큐브" // Q5 아이맥스
]

struct Q1 : View {
    @Binding var loadingNum : Int
    var body: some View {
            NavigationView {
                VStack {
//
                    
                    VStack(alignment: .leading){
                        Text("영화가")
                            .font(.largeTitle.bold())
                        Text("땡기는 주말 🎬,")
                            .font(.largeTitle.bold())
                        Text("당신은?")
                            .font(.largeTitle.bold())
                    }
                    .padding(.trailing, 71)
                    .padding(.top, 150)
                    
                    Spacer()
                    
                    NavigationLink(destination: Q2(loadingNum: $loadingNum)) {
                                ZStack {
                                    HStack {
                                        VStack (alignment: .leading) {
                                            Text("바로 근처")
                                                .font(.system(size:20))
                                                .foregroundColor(Color.white)
                                            Text("영화관으로 달려간다.")
                                                .font(.system(size:20))
                                                .foregroundColor(Color.white)
                                        }
                                        .padding(.trailing, 30)
                                        Text("🏃‍♂️")
                                            .font(.system(size:40))
                                    }
                                }
                                .frame(width: 350, height: 120)
                                .background(Color(hex:"5856D6").shadow(radius: 3).cornerRadius(19))
                                
                            }
                                    
                                    
                NavigationLink(destination: Q2(loadingNum: $loadingNum)) {
                                ZStack {
                                    HStack {
                                        VStack (alignment: .leading) {
                                            Text("예매 사이트에서 보고싶은")
                                                .font(.system(size:20))
                                                .foregroundColor(Color.white)
                                            Text("영화가 있는지 확인한다.")
                                                .font(.system(size:20))
                                                .foregroundColor(Color.white)
                                        }
                                        .padding(.trailing, 30)
                                        Text("🎫")
                                            .font(.system(size:40))
                                    }
                                }
                                .frame(width: 350, height: 120)
                                .background(Color(hex:"5856D6").shadow(radius: 3).cornerRadius(19))
                            }
                        }
            }
//            .navigationBarItems(
//                    leading:
//                        NavigationLink(destination: TestView(loadingNum: $loadingNum)) {
//                            Text("<")
//                                .foregroundColor(.black)
//                                .font(.system(size: 34).bold())
//                        },
//                    trailing:
//                        NavigationLink (destination: ContentView(loadingNum: $loadingNum)){
//                            //Image(systemName:"multipy")
//                            Text("X")
//                                .foregroundColor(.black)
//                                .font(.system(size: 34).bold())
//                        }
//                )
            .navigationBarBackButtonHidden()
        }
}

struct Q2: View {
    @Binding var loadingNum : Int
    var body: some View {
            NavigationView {
                
                VStack {
                    VStack(alignment: .leading){
                        Text("간만에 생긴")
                            .font(.largeTitle.bold())
                        Text("자유시간 🏖️,")
                            .font(.largeTitle.bold())
                        Text("당신이라면?")
                            .font(.largeTitle.bold())
                    }
                    .padding(.trailing, 100)
                    .padding(.top, 150)
                    
                    Spacer()
                    
                NavigationLink(destination: Q3(loadingNum: $loadingNum)) {
                                ZStack {
                                    HStack {
                                        VStack (alignment: .leading) {
                                            Text("혼자서도 잘 놀아요,")
                                                .font(.system(size:20))
                                                .foregroundColor(Color.white)
                                            Text(" 나만의 시간을 갖는다.")
                                                .font(.system(size:20))
                                                .foregroundColor(Color.white)
                                        }
                                        .padding(.trailing, 30)
                                        Text("🏝️")
                                            .font(.system(size:40))
                                    }
                                }
                                .frame(width: 350, height: 120)
                                .background(Color(hex:"5856D6").shadow(radius: 3).cornerRadius(19))
                                
                            }
                                    
                                    
                NavigationLink(destination: Q3(loadingNum: $loadingNum)) {
                                ZStack {
                                    HStack {
                                        VStack (alignment: .leading) {
                                            Text("혼자는 외로워,")
                                                .font(.system(size:20))
                                                .foregroundColor(Color.white)
                                            Text("친구들에게 연락한다.")
                                                .font(.system(size:20))
                                                .foregroundColor(Color.white)
                                        }
                                        .padding(.trailing, 30)
                                        Text("📱")
                                            .font(.system(size:40))
                                    }
                                }
                                .frame(width: 350, height: 120)
                                .background(Color(hex:"5856D6").shadow(radius: 3).cornerRadius(19))
                            }
                        }
            }
            .navigationBarBackButtonHidden()
        }
}

struct Q3: View {
    @Binding var loadingNum : Int
    var body: some View {
        NavigationView {
            
            VStack {
                VStack(alignment: .leading){
                    Text("요즘 가장 핫한")
                        .font(.largeTitle.bold())
                    Text("영화를 보고 난 뒤 🔥,")
                        .font(.largeTitle.bold())
                    Text("당신의 행동은?")
                        .font(.largeTitle.bold())
                }
                .padding(.trailing, 10)
                .padding(.top, 150)
                
                Spacer()
                
            NavigationLink(destination: Q4(loadingNum: $loadingNum)) {
                            ZStack {
                                HStack {
                                    VStack (alignment: .leading) {
                                        Text("SNS에")
                                            .font(.system(size:20))
                                            .foregroundColor(Color.white)
                                        Text("자랑하기.")
                                            .font(.system(size:20))
                                            .foregroundColor(Color.white)
                                    }
                                    .padding(.trailing, 30)
                                    Text("👍")
                                        .font(.system(size:40))
                                }
                            }
                            .frame(width: 350, height: 120)
                            .background(Color(hex:"5856D6").shadow(radius: 3).cornerRadius(19))
                            
                        }
                                
                                
            NavigationLink(destination: Q4(loadingNum: $loadingNum)) {
                            ZStack {
                                HStack {
                                    VStack (alignment: .leading) {
                                        Text("사진 찍어")
                                            .font(.system(size:20))
                                            .foregroundColor(Color.white)
                                        Text("혼자 간직하기.")
                                            .font(.system(size:20))
                                            .foregroundColor(Color.white)
                                    }
                                    .padding(.trailing, 30)
                                    Text("📸")
                                        .font(.system(size:40))
                                }
                            }
                            .frame(width: 350, height: 120)
                            .background(Color(hex:"5856D6").shadow(radius: 3).cornerRadius(19))
                        }
                    }
        }
        .navigationBarBackButtonHidden()
    }
}

struct Q4: View {
    @Binding var loadingNum : Int
    var body: some View {
        NavigationView {
            
            VStack {
                VStack(alignment: .leading){
                    Text("영화 시작 전, 👨‍🚒")
                        .font(.largeTitle.bold())
                    Text("화재 시 대피 요령을")
                        .font(.largeTitle.bold())
                    Text("본 당신의 머릿속에는?")
                        .font(.largeTitle.bold())
                }
                .padding(.trailing, 10)
                .padding(.top, 150)
                
                Spacer()
                
            NavigationLink(destination: Q5(loadingNum: $loadingNum)) {
                            ZStack {
                                HStack {
                                    VStack (alignment: .leading) {
                                        Text("영화관에")
                                            .font(.system(size:20))
                                            .foregroundColor(Color.white)
                                        Text("불이 나면 어떡하지...")
                                            .font(.system(size:20))
                                            .foregroundColor(Color.white)
                                    }
                                    .padding(.trailing, 30)
                                    Text("🚨")
                                        .font(.system(size:40))
                                }
                            }
                            .frame(width: 350, height: 120)
                            .background(Color(hex:"5856D6").shadow(radius: 3).cornerRadius(19))
                            
                        }
                                
                                
            NavigationLink(destination: Q5(loadingNum: $loadingNum)) {
                            ZStack {
                                HStack {
                                    VStack (alignment: .leading) {
                                        Text("영화 언제 시작하지?")
                                            .font(.system(size:20))
                                            .foregroundColor(Color.white)
                                        Text("빨리 시작해라")
                                            .font(.system(size:20))
                                            .foregroundColor(Color.white)
                                    }
                                    .padding(.trailing, 30)
                                    Text("❓")
                                        .font(.system(size:40))
                                }
                            }
                            .frame(width: 350, height: 120)
                            .background(Color(hex:"5856D6").shadow(radius: 3).cornerRadius(19))
                        }
                    }
        }
        .navigationBarBackButtonHidden()
    }
}

struct Q5 : View {
    @Binding var loadingNum : Int
    @State var answer : Bool = true
    var body: some View {
            NavigationView {
                VStack {
                    VStack(alignment: .leading){
                        Text("크리스토퍼 놀란의 신작이")
                            .font(.largeTitle.bold())
                        Text("아이맥스로  🪐")
                            .font(.largeTitle.bold())
                        Text("촬영됐다던데...?")
                            .font(.largeTitle.bold())
                    }
                    .padding(.trailing, 10)
                    .padding(.top, 150)
                    
                    Spacer()
                                
                    NavigationLink(destination: ResultView(answer: $answer)) {
                        ZStack {
                            HStack {
                                VStack (alignment: .leading) {
                                    Text("당연히")
                                        .font(.system(size:20))
                                        .foregroundColor(Color.white)
                                    Text("용∙아∙맥이지~")
                                        .font(.system(size:20))
                                        .foregroundColor(Color.white)
                                }
                                .padding(.trailing, 30)
                                Text("🐉")
                                    .font(.system(size:40))
                            }
                        }
                        .frame(width: 350, height: 120)
                        .background(Color(hex:"5856D6").shadow(radius: 3).cornerRadius(19))
                    }
                    .simultaneousGesture(TapGesture().onEnded{
                                answer = true
                    })
                                    
                                    
                    NavigationLink(destination: ResultView(answer: $answer)) {
                        ZStack {
                            HStack {
                                VStack (alignment: .leading) {
                                    Text("예매하기 빡쎄다던데...")
                                        .font(.system(size:20))
                                        .foregroundColor(Color.white)
                                    Text("그냥 일반 영화관에서 봐야겠다.")
                                        .font(.system(size:20))
                                        .foregroundColor(Color.white)
                                }
                                .padding(.trailing, 30)
                                Text("😭")
                                    .font(.system(size:40))
                            }
                        }
                        .frame(width: 350, height: 120)
                        .background(Color(hex:"5856D6").shadow(radius: 3).cornerRadius(19))
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
    @State var loadingNum : Int = 2
    @State var randomInd : Int = 0
    var body: some View {
        VStack {
            Text("당신의 취향은 ...")
            Text("\(theaters[randomInd])")
            .bold()
            NavigationLink (destination: ContentView(loadingNum: $loadingNum)){
                                       //Image(systemName:"multipy")
                                       Text("나가기")
            }
        }
        .navigationBarBackButtonHidden()
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
    @Binding var loadingNum : Int
    
    var body: some View {
        NavigationView {
            ZStack {
                Circle()
                    .frame(width:75, height: 75)
                    .foregroundColor(Color(hex: "5856D6").opacity(0.25))
                    .offset(x: 62, y:-257)
                Circle()
                    .frame(width:40, height: 40)
                    .foregroundColor(Color(hex: "5856D6").opacity(0.6))
                    .offset(x: 102, y: -207)
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        Text("나와").font(.largeTitle.bold()).font(.system(size: 34.0))
                        Text("잘 어울리는").font(.largeTitle.bold()).font(.system(size: 34.0))
                        Text("영화관은 어디일까?").font(.largeTitle.bold()).font(.system(size: 34.0)).padding(.bottom, 5)
                        Text("다섯 가지 질문에 응답하면").font(.headline).font(.system(size: 17.0)).foregroundColor(Color.gray).padding(.leading, 5)
                        Text("취향에 맞는 영화관을").font(.headline).font(.system(size: 17.0)).foregroundColor(Color.gray).padding(.leading, 5)
                        Text("추천해드려요.").font(.headline).font(.system(size: 17.0)).foregroundColor(Color.gray).padding(.leading, 5)
                    }
                    .offset(x: -20, y: -236)
                }
                NavigationLink(destination: Q1(loadingNum: $loadingNum)) {
                    Text("테스트 시작하기 →")
                        .font(.system(size: 20.0))
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: 350, height: 120)
                        .foregroundColor(Color.white)
                        .background(Color(hex:"5856D6").shadow(radius: 3).cornerRadius(19))
                }
                .offset(y: 280)

            }
        }
        .navigationBarBackButtonHidden()
    }
}

//struct TestView_Previews: PreviewProvider {
//    static var previews: some View {
//        TestView(loadingNum: 1 )
//    }
//}
