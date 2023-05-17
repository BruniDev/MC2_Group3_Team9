//
//  ContentView.swift
//  mc2_git
//
//  Created by 박지은 on 2023/05/03.
//

import SwiftUI

let instagrams : [String : String] = [
    "광주극장" : "https://instagram.com/cinema_gwangju_1933?igshid=MzRlODBiNWFlZA==",
    "광주독립영화관" : "https://instagram.com/gjcinema?igshid=MzRlODBiNWFlZA==",
    "더숲아트시네마" : "https://instagram.com/deosup_artcinema?igshid=MzRlODBiNWFlZA==",
    "씨네아트리좀" : "https://instagram.com/espacerhizome?igshid=MzRlODBiNWFlZA==",
    "아트하우스모모" : "https://instagram.com/arthousemomo?igshid=MzRlODBiNWFlZA==",
    "안동중앙아트시네마" : "https://instagram.com/joongangcinema.andong?igshid=MzRlODBiNWFlZA==",
    "에무시네마" : "https://instagram.com/emuartspace?igshid=MzRlODBiNWFlZA==",
    "오오극장" : "https://instagram.com/55cine?igshid=MzRlODBiNWFlZA==",
    "인디플러스포항" : "https://instagram.com/pohang_culture?igshid=MzRlODBiNWFlZA==",
    "인디플러스천안" : "https://instagram.com/indieplusca?igshid=MzRlODBiNWFlZA==",
    "인천미림극장" : "https://www.instagram.com/milimcine/",
    "전주디지털독립영화관" : "X",
    "판타스틱큐브" : "https://instagram.com/__fantastic_cube?igshid=MzRlODBiNWFlZA==",
    "필름포럼" : "https://www.instagram.com/filmforum_cinema/",
    "헤이리시네마" : "https://www.instagram.com/heyri_cinema/?hl=ko",
    "씨네큐브광화문" : "https://instagram.com/cinecube_kr?igshid=MzRlODBiNWFlZA==",
    "오르페오한남" : "https://instagram.com/ode.orfeo?igshid=MzRlODBiNWFlZA==",
    "라이카시네마" : "https://instagram.com/laikacinema?igshid=MzRlODBiNWFlZA==",
    "모퉁이극장" : "https://instagram.com/corner_theater?igshid=MzRlODBiNWFlZA==",
    "씨네인디U" : "https://instagram.com/cineindieu?igshid=MzRlODBiNWFlZA==",
    "아리랑시네센터" : "https://instagram.com/arirang_cine?igshid=MzRlODBiNWFlZA==",
    "영화공간주안" : "https://instagram.com/cinespacejuan?igshid=MzRlODBiNWFlZA==",
    "KT&G상상마당시네마" : "https://instagram.com/sangsangcinema?igshid=MzRlODBiNWFlZA==",
    "KU시네마테크" : "https://instagram.com/kucinema?igshid=MzRlODBiNWFlZA=="
]

let urls : [String : String] = [
    "광주극장" : "https://map.naver.com/v5/search/%EA%B4%91%EC%A3%BC%EA%B7%B9%EC%9E%A5/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "광주독립영화관" : "https://map.naver.com/v5/search/%EA%B4%91%EC%A3%BC%EB%8F%85%EB%A6%BD%EC%98%81%ED%99%94%EA%B4%80/place/1528167363?c=15,0,0,0,dh&isCorrectAnswer=true",
    "더숲아트시네마" : "https://map.naver.com/v5/entry/place/1015940361?c=15,0,0,0,dh&isCorrectAnswer=true",
    "씨네아트리좀" : "https://map.naver.com/v5/entry/place/37383447?c=15,0,0,0,dh&isCorrectAnswer=true",
    "아트하우스모모" : "https://map.naver.com/v5/entry/place/12948307?c=15,0,0,0,dh&isCorrectAnswer=true",
    "안동중앙아트시네마" : "https://map.naver.com/v5/search/%EC%95%88%EB%8F%99%EC%A4%91%EC%95%99%EC%8B%9C%EB%84%A4%EB%A7%88/place/34635294?c=15,0,0,0,dh&isCorrectAnswer=true",
    "에무시네마" : "https://map.naver.com/v5/entry/place/37842043?c=15,0,0,0,dh",
    "오오극장" : "https://map.naver.com/v5/search/%EC%98%A4%EC%98%A4%EA%B7%B9%EC%9E%A5/place/35966761?c=15,0,0,0,dh&isCorrectAnswer=true",
    "인디플러스포항" : "https://map.naver.com/v5/search/%EC%9D%B8%EB%94%94%ED%94%8C%EB%9F%AC%EC%8A%A4%ED%8F%AC%ED%95%AD/place/569933553?c=15,0,0,0,dh&isCorrectAnswer=true",
    "인디플러스천안" : "https://map.naver.com/v5/search/%EC%9D%B8%EB%94%94%ED%94%8C%EB%9F%AC%EC%8A%A4%EC%B2%9C%EC%95%88/place/98309050?c=15,0,0,0,dh&isCorrectAnswer=true",
    "인천미림극장" : "https://map.naver.com/v5/entry/place/33315469?c=15,0,0,0,dh&isCorrectAnswer=true",
    "전주디지털독립영화관" : "https://map.naver.com/v5/search/%EC%A0%84%EC%A3%BC%EB%94%94%EC%A7%80%ED%84%B8%EB%8F%85%EB%A6%BD%EC%98%81%ED%99%94%EA%B4%80?c=15,0,0,0,dh&isCorrectAnswer=true",
    "판타스틱큐브" : "https://map.naver.com/v5/search/%ED%8C%90%ED%83%80%EC%8A%A4%ED%8B%B1%20%ED%81%90%EB%B8%8C/place/38488228?c=15,0,0,0,dh&isCorrectAnswer=true",
    "필름포럼" : "https://map.naver.com/v5/entry/place/11625927?c=15,0,0,0,dh&isCorrectAnswer=true",
    "헤이리시네마" : "https://map.naver.com/v5/entry/place/38257172?c=15,0,0,0,dh&isCorrectAnswer=true",
    "씨네큐브광화문" : "https://map.naver.com/v5/search/%EC%94%A8%EB%84%A4%ED%81%90%EB%B8%8C%EA%B4%91%ED%99%94%EB%AC%B8/place/13182210?c=15,0,0,0,dh&isCorrectAnswer=true",
    "오르페오한남" : "https://map.naver.com/v5/search/%EC%98%A4%EB%A5%B4%ED%8E%98%EC%98%A4%ED%95%9C%EB%82%A8/place/1017816573?c=15,0,0,0,dh&isCorrectAnswer=true",
    "라이카시네마" : "https://map.naver.com/v5/entry/place/1156408497?c=15,0,0,0,dh&isCorrectAnswer=true",
    "모퉁이극장" : "https://map.naver.com/v5/entry/place/1303271354?c=15,0,0,0,dh",
    "씨네인디U" : "https://map.naver.com/v5/search/%EC%94%A8%EB%84%A4%EC%9D%B8%EB%94%94U/place/1927181014?c=15,0,0,0,dh&isCorrectAnswer=true",
    "아리랑시네센터" : "https://map.naver.com/v5/search/%EC%95%84%EB%A6%AC%EB%9E%91%EC%8B%9C%EB%84%A4%EC%84%BC%ED%84%B0/place/11622504?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "영화공간주안" : "https://map.naver.com/v5/entry/place/12035642?c=15,0,0,0,dh",
    "KT&G상상마당시네마" : "https://map.naver.com/v5/entry/place/1361168366?c=15,0,0,0,dh",
    "KU시네마테크" : "https://map.naver.com/v5/search/KU%EC%8B%9C%EB%84%A4%EB%A7%88%ED%85%8C%ED%81%AC/place/19563767?c=15,0,0,0,dh&isCorrectAnswer=true"
]

let addresses : [String : String] = [
    "광주극장" : "광주광역시 동구 충장로46번길 10",
    "광주독립영화관" : "광주광역시 동구 제봉로 96 (광주영상복합문화관 6층)",
    "더숲아트시네마" : "서울특별시 노원구 노해로 480 조광빌딩 B",
    "씨네아트리좀" : "경상남도 창원시 마산합포구 동서북14길 24",
    "아트하우스모모" : "서울특별시 서대문구 이화여대길 52 (대현동, 이화여자대학교 ECC B402)",
    "안동중앙아트시네마" : "경상북도 안동시 문화광장길 45 (삼산동)",
    "에무시네마" : "서울특별시 종로구 경희궁1가길 7",
    "오오극장" : "대구광역시 중구 국채보상로 537",
    "인디플러스포항" : "경상북도 포항시 북구 서동로 83",
    "인디플러스천안" : "충청남도 천안시 동남구 중앙로 111 천안시영상미디어센터",
    "인천미림극장" : "인천광역시 동구 화도진로 31 (송현동)",
    "전주디지털독립영화관" : "전북 전주시 완산구 고사동 전주객사3길22 전주영화제작소 4층",
    "판타스틱큐브" : "경기 부천시 길주로 210 1층 판타스틱큐브",
    "필름포럼" : "서울특별시 서대문구 성산로 527, (대신동) 하늬솔빌딩 A동 지하1층",
    "헤이리시네마" : "경기도 파주시 탄현면 헤이리마을길 93-119 커피공장 103 카페 3층, 헤이리시네마",
    "씨네큐브광화문" : "서울특별시 종로구 새문안로 68 (신문로1가, 흥국생명빌딩 지하2층)",
    "오르페오한남" : "서울특별시 용산구 대사관로 35, (한남동) 사운즈한남 5층",
    "라이카시네마" : "서울특별시 서대문구 연희로 8길 18(연희동)",
    "모퉁이극장" : "부산광역시 중구 광복중앙로13 3층",
    "씨네인디U" : "대전광역시 중구 계백로 1712 기독교연합봉사 회관 1층",
    "아리랑시네센터" : "서울특별시 성북구 아리랑로 82 (돈암동)",
    "영화공간주안" : "인천광역시 미추홀구 미추홀대로 716 (주안동, 메인프라자 7층)",
    "KT&G상상마당시네마" : "서울특별시 마포구 어울마당로 65 상상마당 홍대 지하4층",
    "KU시네마테크" : "서울특별시 광진구 능동로 120 건국대학교 예술문화관 B108"
]

struct ContentView: View {
    var dateManager = DateManager()
    var movieScheduleManager = MovieScheduleManager()
    @State var movieDetailData: MovieDetailData = MovieDetailData(title: "", engTitle: "", poster: "", releasedDate: "", overView: "", director: "", cast: "", genre: "", runningTime: "", rating: "")
    @State var allDays : Array<String> = []
    @State var closedDays : Array<String> = []
    @State var workingDays : Array<String> = []
    @State var movieScheduleDataForUser: Array<MovieScheduleDataForUser> = []
    @State var locationDataManager = LocationDataManager()
    @State var theaters : [Theater] = [Theater(), Theater(), Theater()]
    @State var isLoading : Bool = true
    @State var biggestCircle : Bool = false
    @State var biggerCircle : Bool = false
    @State var isShowingPopup : Bool = false
    @State var selectedDate : Date = Date()
    @State var theaterName : String = ""
    @State var theaterDistance : String = ""
    @State var answer : Bool = false
    @State var randomInd : Int = 0
    @State var showSheet : Bool = false
    @State private var selected = "내 근처 영화관"
    @State private var startingOffsetY: CGFloat = UIScreen.main.bounds.height * 0.89 // UIScreen.main.bounds.height * 0.87
    @State private var currentDragOffsetY: CGFloat = 0
    @State private var endingOffsetY: CGFloat = 0
    @State var bottomSheetPresented = false
    @State var padding_bottom : CGFloat = 33
    @Binding var loadingNum : Int
    
    //    @State private var isVisible = false
//
    
    @State private var currentIndex = 0
    @State private var showWalk = true
    @State private var showRun = false
    @State private var showWalk1 = false
    @State private var showRun1 = false
    @State private var showWalk2 = false
    @State private var showRun2 = false
    
    let images: [String] = ["figure.run", "figure.walk", "figure.run", "figure.walk", "figure.run", "figure.walk"]
    
    
    let timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
    func startAnimating() {
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { timer in
               withAnimation {
                   currentIndex = (currentIndex + 1) % images.count
               }
           }
       }
    
    
    
    var body: some View {
        ZStack {
            VStack {
                ZStack { //Mark: - 영화관 로고
                    Rectangle()
                        .frame(height: 128)
                        .foregroundColor(Color(hex: "252525"))
                    Image("\(theaterName)") // #fix
                        .resizable()
                        .scaledToFit()
                        .frame(height: 70)
                        //.border(.white)
                        .offset(x:0, y:10)
                }
                .foregroundColor(Color(hex: "252525"))
                
                //Mark: - 날짜 View, 포스터 View
                MovieDayView2(movieDetailData: $movieDetailData, selectedDate: $selectedDate, theaters: $theaters, movieScheduleDataForUser: $movieScheduleDataForUser, allDays: $allDays,isShowingPopup: $isShowingPopup, theaterName: $theaterName,showSheet : $showSheet)
                
                //Mark: - 영화관 이름, 주소
                VStack(spacing: 0) {
                    Rectangle()
                        .frame(height: 3)
                        .foregroundColor(Color(hex:"E5E5EA"))
                    
                    HStack {
                        VStack(alignment: .leading) {
                            HStack {
                                Text("\(theaterName)") // #fix
                                    .font(.system(size:22, weight: .bold))
                                
                                Link(destination: URL(string: instagrams[theaterName] ?? "X") ?? URL(string: "https://map.naver.com/v5/entry/place/11591652?c=15,0,0,0,dh")!, label: {
                                    Image("Instagram_icon")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 22)
                                })
                            }
                                
                                Text(addresses[theaterName] ?? "X")
                                    .font(.system(size:12))
                                    .bold()
                                
                                VStack {
                                    Spacer()
                                    HStack {
                                        Text("나와의 거리")
                                            .padding(.trailing, 10)
                                        HStack(spacing: 10) {
                                            ForEach(0..<images.count) { index in
                                                Image(systemName: images[index])
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(width: 16, height: 16)
                                                    .opacity(index == currentIndex ? 1 : 0)
                                                    .animation(.easeIn(duration: 0.5))
                                            }
                                        }
                                        .onAppear {
                                            startAnimating()
                                        }

                                        Text("\(theaterDistance)")
                                            .multilineTextAlignment(.trailing)
                                            .foregroundColor(Color(hex: "5856D6"))
                                            .bold()
                                        
                                        Link(destination: URL(string: urls[theaterName] ?? "X") ?? URL(string: "https://map.naver.com/v5/entry/place/11591652?c=15,0,0,0,dh")!, label: {
                                            Image("location")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30)
                                        })
                                    }
                                }

                            }
                            //                                .offset(y: 55)
                        }
                        //.padding(.horizontal, 10)
                    }
                    .padding(.leading)
                    .padding(.top, 25) // 20 --> 25
                    .padding(.bottom, 80)
                    .frame(width: UIScreen.main.bounds.width)
                    .background(Color(hex:"687CC3").opacity(0.1))
                }
                .frame(width: 390, height : 844)
            .edgesIgnoringSafeArea(.top)
            .onAppear {
                print(UIScreen.main.bounds.height)
                if locationDataManager.locationManager.authorizationStatus == .authorizedWhenInUse {
                    theaters = CheckTop3Theaters(location: locationDataManager.locationManager.location!)
                    theaterName = theaters[0].name // # fix
                    theaterDistance = theaters[0].transferToMobility()
                    dateManager.fetchDate(theaterName: theaterName) // # fix
                    
                    allDays = dateManager.allDays
                    closedDays = dateManager.closedDays
                    
                    for i in closedDays {
                        if let j = allDays.firstIndex(of: i){
                            allDays.remove(at: j)
                        }
                    }
                    
                    let dateFormatter = DateFormatter()
                    dateFormatter.dateFormat = "yyyy-MM-dd"
                    dateFormatter.timeZone = TimeZone(identifier: "UTC")
                    selectedDate = dateFormatter.date(from: allDays[0])!
                    
                    movieScheduleManager.fetchMovieSchedule(theaterName: theaterName, date: dateFormatter.string(from: selectedDate)) { result in
                        if let movieScheduleDataforUser = result {
                            self.movieScheduleDataForUser = movieScheduleDataforUser
                        }
                    }
                }
            }
           
//            if bottomSheetPresented {
//                Button (action: {
//                    withAnimation(.spring()){
//                        if currentDragOffsetY < -100 {
//                            endingOffsetY = -startingOffsetY + 540
//                            currentDragOffsetY = .zero
//                        } else if endingOffsetY != 0 && currentDragOffsetY > 100 {
//                            endingOffsetY = .zero
//                            currentDragOffsetY = .zero
//                            bottomSheetPresented = false
//                            padding_bottom = 33
//                        } else {
//                            currentDragOffsetY = .zero
//                        }
//                    }
//                    bottomSheetPresented.toggle()
//                    padding_bottom = 33
//                })
//                {
//                    Rectangle()
//                        .frame(minWidth: 0, maxWidth: .infinity,minHeight: 0, maxHeight: .infinity)
//                        .foregroundColor(Color.black.opacity(0.5))
//                        .edgesIgnoringSafeArea(.all)
//                }
//            }
            
            GeometryReader { reader in
                
                if bottomSheetPresented {
                    Button (action: {
                        withAnimation(.spring()){
                            startingOffsetY = UIScreen.main.bounds.height * 0.89
                            currentDragOffsetY = 0
                            endingOffsetY = .zero
                        }
                        bottomSheetPresented = false
                        padding_bottom = 33
                    })
                    {
                        Rectangle()
                            .frame(minWidth: 0, maxWidth: .infinity,minHeight: 0, maxHeight: .infinity)
                            .foregroundColor(Color.black.opacity(0.5))
                            .edgesIgnoringSafeArea(.all)
                    }
                }
                
                BottomSheetView(dateManager: DateManager(), movieScheduleManager: MovieScheduleManager(), movieScheduleDataForUser: $movieScheduleDataForUser, allDays: $allDays, closedDays: $closedDays, selected: $selected, selectedDate: $selectedDate, theaters: $theaters, theaterName: $theaterName,theaterDistance: $theaterDistance, padding_bottom: $padding_bottom, bottomSheetPresented: $bottomSheetPresented, startingOffsetY: $startingOffsetY, currentDragOffsetY: $currentDragOffsetY, endingOffsetY: $endingOffsetY)
                    .offset(y: startingOffsetY)
                    .offset(y: currentDragOffsetY)
                    .offset(y: endingOffsetY)
                    .gesture( // 드래그 정도에 따른 opacity 조절
                        DragGesture()
                            .onChanged({ value in
                                withAnimation(.spring()){
                                    if value.translation.height < -startingOffsetY + 540 { // 551
                                        currentDragOffsetY = -startingOffsetY + 540
                                    }
                                    else {
                                        currentDragOffsetY = value.translation.height
                                    }
                                    padding_bottom = 1
                                    bottomSheetPresented = true
                                }
                            })
                            .onEnded({ value in
                                withAnimation(.spring()) {
                                    if currentDragOffsetY < -100 {
                                        endingOffsetY = -startingOffsetY + 540
                                        currentDragOffsetY = .zero
                                    } else if endingOffsetY != 0 && currentDragOffsetY > 100 {
                                        endingOffsetY = .zero
                                        currentDragOffsetY = .zero
                                        bottomSheetPresented = false
                                        padding_bottom = 33
                                    } else {
                                        currentDragOffsetY = .zero
                                    }
                                }
                            })
                    )
            }
            
            if isLoading && loadingNum == 1 {
                LoadingView
            }
            
            
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: { // #loading time
                isLoading.toggle()
            })
        }
        .overlay(){
            if isShowingPopup {
                Color.black.opacity(0.5)
                    .ignoresSafeArea()
                
                CustomAlertView(isShowingPopup: $isShowingPopup, movieDetailData: $movieDetailData)
                    .frame(width: 352, height: 758)
                    .background(Color.white)
            }
        }
    }
}



extension ContentView {
    var LoadingView: some View {
        ZStack {
            Color(hex:"EEE9F6")
                .ignoresSafeArea()
            HStack (alignment: .top) {
                VStack(alignment: .center) {
                    VStack(alignment: .leading) {
                        Text("가까운").font(.largeTitle.bold()).font(.system(size: 34.0))
                        Text("독립영화관으로").font(.largeTitle.bold()).font(.system(size: 34.0))
                        Text("떠납니다.").font(.largeTitle.bold()).font(.system(size: 34.0))
                            .padding(.bottom, 2)
                        Text("나와 가장 가까운 독립영화관을").font(.headline).font(.system(size: 17.0)).foregroundColor(Color.gray)
                        Text("찾아볼까요?").font(.headline).font(.system(size: 17.0)).foregroundColor(Color.gray)
                    }
                    .frame(alignment: .topLeading)
                    .offset(x:44, y: 103)
                    
                    Spacer()
                }
                Spacer()
            }
            
            AnimationView()
        }
    }
}
