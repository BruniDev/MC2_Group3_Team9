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

let describe1 = [
    """
    감각적이며 편안한 장소를 좋아하시는 당신, \
    당신에게는 서울 서대문구에 위치한’ 라이카시네마’를 추천해 드려요!
    """,

    """
    감성적이고 분위기 있는 조용한 장소를 좋아하시는 당신, \
    당신에게는 서울 종로구에 위치한 ‘에무시네마’를 추천해 드려요!
    """,

    """
    한국 독립영화를 즐겨보는 당신, \
    당신에게는 경북 포항시에 위치한 ‘인디플러스 포항’을 추천드려요!
    """,

    """
    예술영화 마니아인 당신, \
    당신에게는 서울 광진구 ‘KU 시네마테크’를 추천해 드려요!
    """,

    """
    아늑하고 조용한 장소를 좋아하시는 당신, \
    당신에게는 대구 중구에 위치한 ‘오오극장’을 추천해 드려요!
    """,

    """
    음악영화, 예술영화를 좋아하는 당신, \
    당신에게는 서울 한남동에 위치한 영화관 ‘오르페오’를 추천해 드려요!
    """,
    
    """
    예술영화를 사랑하는 당신, \
    당신에게는 서울 종로구에 위치한 ‘씨네큐브’를 추천해 드려요!
    """,

    """
    장르불문 다양한 영화를 즐기는 당신, \
    당신에게는 경기도 부천에 있는 ‘판타스틱 큐브’를 추천해 드려요!
    """
]

let describe2 = [
    """
    라이카시네마는 최초의 우주개, 쿠드랴프카를 기리며 탄생한 영화관이예요. \
    루프탑에 작은 정원이 있으며, 좌석 사이 간격이 넓어 쾌적함을 느낄 수 있어요.
    """,
    
    """
    광화문역에 자리 잡고 있어 영화 관람 전에, 경희궁 앞에서 산책을 즐기실 수 있으며, \
    에무시네마 카페에서는 상영 중인 영화를 테마로 한 특별한 음료도 판매하고 있어요.
    """,
    
    """
    """,
    
    """
    씨네큐브는 2021년, 상영관 리뉴얼을 통한 넓고 쾌적한 시설이 특징이며, \
    외부에 다양한 예술 조형물과 근처 세화미술관에서 여유로운 시간을 보낼 수도 있어요.
    """,
    
    """
    대구의 중심, 동성로 근처에 자리 잡은 오오극장은 \
    2015년, 대구독립영화인의 열정과 시민의 후원으로 설립된 오오극장은 \
    대구에서 가장 많이 한국독립영화를 상영하는 지역 최초의 독립영화전용관이예요.
    """, // Have To Fix
    
    """
    오르페오 한남은 이태원의 도심 라이프스타일 공간을 제안하는 복합 문화시설 ‘사운즈한남' 안에 있어요. \
    오르페오는 스틸북스라는 서점과 라스트페이지라는 바를 함께 운영하고 있어요. 상영시간까지 기다리며 구경하는 재미도 있겠죠.
    """,
    
    """
    씨네큐브는 2021년, 상영관 리뉴얼을 통한 넓고 쾌적한 시설이 특징이며, \
    외부에 다양한 예술 조형물과 근처 세화미술관에서 여유로운 시간을 보낼 수도 있어요.
    """,
    
    """
    판타스틱 큐브는 부천문화재단에서 운영하고 있으며, 부천시청 안에 위치하고 있어요. \
    부천시민 할인을 적용받으면 5천원에 즐길 수 있으며, 일반 티켓 가격도 7천원으로 저렴해요.
    """
]

let describe3 = [
    """
    라이카시네마에서는 한 달에 한 번 단편영화 기획전을 하고 있어요. \
    한 편에 3,000원이라는 저렴한 가격에 영화를 볼 수 있다니.. 이런 기회를 놓칠 수는 없겠죠?
    """,
    
    """
    에무시네마는 매달 하나의 테마로 여러 가지 작품을 묶어서 상영하고 있답니다. \
    여름부터 초가을까지, 여름밤에 어울리는 영화를 야외 상영하는 ‘별빛영화제’도 진행하고 있으니 방문해 보시면 어떨까요?
    """,
    
    """
    포항문화재단에서 운영하고 있는 인디플러스 포항은 3500원이라는 훌륭한 가격에 예술독립영화를 즐길 수 있어요. \
    저렴한 가격이니 가볍게 방문해 보시면 어떨까요?
    """,
    
    """
    KU시네마테크는 일반 멀티플렉스 극장 250석 규모에 152석만을 배치해 넓고 편안한 좌석 간격과 안정된 경사도로 편안한 시야를 확보하고 있어요. \
    건대에 방문하게 되면 한 번쯤 가보면 어떨까요?
    """,
    
    """
    오오극장은 영화를 소비하는 공간을 넘어 여러 커뮤니티와 연대하며 무엇이든 할 수 있고 누구나 참여할 수 있는 자유로운 극장입니다. \
    55석의 자그마한 극장이지만 지역 독립영화관의 오늘을 만들고 있습니다. 함께 즐겨보면 어떨까요?
    """,
    
    """
    오르페오는 멤버십 회원제로 운영되고 있어요. \
    영화, 오케스트라, 클래식, 오페라 등 다양한 미디어를 상영하기 때문에 본인의 취향에 맞게 골라보는 재미가 있어요. 궁금하지 않나요?
    """,
    
    """
    다양한 종류의 독립 예술영화를 상영하고 있으며, 평론가의 GV, 씨네토크 등의 행사를 많이 진행하고 있어요. \
    독립영화관 중에서도 깔끔한 시설과 큰 스크린을 자랑하는 씨네큐브에서 예술영화 한 편 즐겨보시는 건 어떨까요?
    """,
    
    """
    바로 옆에는 영화관 옆 도서관인 큐브도서관이 있어요. 옆에는 카페 뜨락이라는 카페도 있어 영화보기 전 커피 한 잔의 여유도 즐길 수 있어요. \
    부천 중앙공원에 인접해 있어 산책을 즐기기에도 좋아요. 가벼운 마음으로 방문해 볼만 하겠죠?
    """
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
        //        VStack {
        //            Text("당신의 취향은 ...")
        //            Text("\(theaters[randomInd])")
        //            .bold()
        //            NavigationLink (destination: ContentView(loadingNum: $loadingNum)){
        //                                       //Image(systemName:"multipy")
        //                                       Text("나가기")
        //            }
        //        }
        //        .navigationBarBackButtonHidden()
        ZStack {
            VStack{
                Image("background_result")
                    .frame(width: 390 ,height: 293)
                    .edgesIgnoringSafeArea(.top)
                Spacer()
            }
            
            VStack(alignment: .center) {
                Text("나의 극장")
                    .frame(width: 80, height: 23)
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                    .background(Color(hex:"636366"))
                    .cornerRadius(10)
                    .padding(.top, 29)
                Text("📽️")
                    .font(.system(size: 22))
                    .padding(.top, 11)

                Text("당신의 취향은 \(theaters[randomInd])")
                    .font(.system(size: 22).bold())
                    .padding(.top, 11)
                
                Image("\(theaters[randomInd])_circle")
                    .frame(width:80, height: 80)
                    .padding(.top, 11)
                
                Text(describe1[randomInd])
                    .font(.system(size: 15))
                    .padding(.top, 15)
                    .padding(.horizontal,27)
                
                Text(describe2[randomInd])
                    .font(.system(size: 15))
                    .padding(.top, 25)
                    .padding(.horizontal,27)
                
                Text(describe3[randomInd])
                    .font(.system(size: 15))
                    .padding(.top, 25)
                    .padding(.horizontal,27)
                
                Spacer()
            }
            .frame(width: 339, height: 607)
            .background(Color(hex:"E5E5EA"))
            .border(Color(hex:"8E8E93"))
            .cornerRadius(23)
            .offset(y: 84)
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
