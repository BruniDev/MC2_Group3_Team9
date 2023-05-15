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
    "안동중앙시네마" : "https://instagram.com/joongangcinema.andong?igshid=MzRlODBiNWFlZA==",
    "에무시네마" : "https://instagram.com/emuartspace?igshid=MzRlODBiNWFlZA==",
    "오오극장" : "https://instagram.com/55cine?igshid=MzRlODBiNWFlZA==",
    "인디플러스포항" : "https://instagram.com/pohang_culture?igshid=MzRlODBiNWFlZA==",
    "인디플러스천안" : "https://instagram.com/indieplusca?igshid=MzRlODBiNWFlZA==",
    "인천미림극장" : "https://instagram.com/indieplusca?igshid=MzRlODBiNWFlZA==",
    "전주디지털독립영화관" : "X",
    "판타스틱큐브" : "https://instagram.com/__fantastic_cube?igshid=MzRlODBiNWFlZA==",
    "필름포럼" : "https://instagram.com/__fantastic_cube?igshid=MzRlODBiNWFlZA==",
    "헤이리시네마" : "https://instagram.com/__fantastic_cube?igshid=MzRlODBiNWFlZA==",
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

let urls : [String : String] = [ // 광주극장, 오오극장, 인디플러스 포항 제외 모두 안됌. 주소 직접 복사 붙여넣기로 넣어야 함.
    "광주극장" : "https://map.naver.com/v5/search/%EA%B4%91%EC%A3%BC%EA%B7%B9%EC%9E%A5/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "광주독립영화관" : "https://map.naver.com/v5/search/광주독립영화관/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "더숲아트시네마" : "https://map.naver.com/v5/search/더숲아트시네마/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "씨네아트리좀" : "https://map.naver.com/v5/search/씨네아트리좀/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "아트하우스모모" : "https://map.naver.com/v5/search/아트하우스모모/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "안동중앙시네마" : "https://map.naver.com/v5/search/안동중앙시네마/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "에무시네마" : "https://map.naver.com/v5/search/에무시네마/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "오오극장" : "https://map.naver.com/v5/search/%EC%98%A4%EC%98%A4%EA%B7%B9%EC%9E%A5/place/35966761?c=15,0,0,0,dh&isCorrectAnswer=true",
    "인디플러스포항" : "https://map.naver.com/v5/search/%EC%9D%B8%EB%94%94%ED%94%8C%EB%9F%AC%EC%8A%A4%ED%8F%AC%ED%95%AD/place/569933553?c=15,0,0,0,dh&isCorrectAnswer=true",
    "인디플러스천안" : "https://map.naver.com/v5/search/인디플러스천안/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "인천미림극장" : "https://map.naver.com/v5/search/인천미림극장/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "전주디지털독립영화관" : "https://map.naver.com/v5/search/전주디지털독립영화관/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "판타스틱큐브" : "https://map.naver.com/v5/search/판타스틱큐브/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "필름포럼" : "https://map.naver.com/v5/search/필름포럼/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "헤이리시네마" : "https://map.naver.com/v5/search/헤이리시네마/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "씨네큐브광화문" : "https://map.naver.com/v5/search/씨네큐브광화문/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "오르페오한남" : "https://map.naver.com/v5/search/오르페오한남/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "라이카시네마" : "https://map.naver.com/v5/search/라이카시네마/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "모퉁이극장" : "https://map.naver.com/v5/search/모퉁이극장/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "씨네인디U" : "https://map.naver.com/v5/search/씨네인디U/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "아리랑시네센터" : "https://map.naver.com/v5/search/아리랑시네센터/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "영화공간주안" : "https://map.naver.com/v5/search/영화공간주안/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "KT&G상상마당시네마" : "https://map.naver.com/v5/search/KT&G상상마당시네마/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "KU시네마테크" : "https://map.naver.com/v5/search/KU시네마테크/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp"
]

let addresses : [String : String] = [ // 오오극장, 인디플러스 포항 제외 모두 안됌. 주소 직접 복사 붙여넣기로 넣어야 함.
    "광주극장" : "https://map.naver.com/v5/search/%EA%B4%91%EC%A3%BC%EA%B7%B9%EC%9E%A5/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "광주독립영화관" : "https://map.naver.com/v5/search/광주독립영화관/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "더숲아트시네마" : "https://map.naver.com/v5/search/더숲아트시네마/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "씨네아트리좀" : "https://map.naver.com/v5/search/씨네아트리좀/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "아트하우스모모" : "https://map.naver.com/v5/search/아트하우스모모/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "안동중앙시네마" : "https://map.naver.com/v5/search/안동중앙시네마/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "에무시네마" : "https://map.naver.com/v5/search/에무시네마/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "오오극장" : "대구광역시 중구 국채보상로 537",
    "인디플러스포항" : "경상북도 포항시 북구 서동로 83",
    "인디플러스천안" : "https://map.naver.com/v5/search/인디플러스천안/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "인천미림극장" : "https://map.naver.com/v5/search/인천미림극장/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "전주디지털독립영화관" : "https://map.naver.com/v5/search/전주디지털독립영화관/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "판타스틱큐브" : "https://map.naver.com/v5/search/판타스틱큐브/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "필름포럼" : "https://map.naver.com/v5/search/필름포럼/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "헤이리시네마" : "https://map.naver.com/v5/search/헤이리시네마/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "씨네큐브광화문" : "https://map.naver.com/v5/search/씨네큐브광화문/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "오르페오한남" : "https://map.naver.com/v5/search/오르페오한남/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "라이카시네마" : "https://map.naver.com/v5/search/라이카시네마/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "모퉁이극장" : "https://map.naver.com/v5/search/모퉁이극장/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "씨네인디U" : "https://map.naver.com/v5/search/씨네인디U/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "아리랑시네센터" : "https://map.naver.com/v5/search/아리랑시네센터/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "영화공간주안" : "https://map.naver.com/v5/search/영화공간주안/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "KT&G상상마당시네마" : "https://map.naver.com/v5/search/KT&G상상마당시네마/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp",
    "KU시네마테크" : "https://map.naver.com/v5/search/KU시네마테크/place/11830496?c=15,0,0,0,dh&placePath=%3Fentry%253Dbmp"
]

//let results = [
//    "라이카시네마",
//    "에무시네마",
//    "인디플러스포항",
//    "KU시네마테크", // Q5 일반 영화관
//    "오오극장",
//    "오르페오한남",
//    "씨네큐브광화문",
//    "판타스틱큐브" // Q5 아이맥스
//]

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
    @State var answer : Bool = false
    @State var randomInd : Int = 0
    @State var showSheet : Bool = false
    var body: some View {
        GeometryReader { geometry in
           NavigationView {
            VStack(spacing: 0) {
                ZStack {
                  //  VStack(spacing: 0) {
                    ScrollView(showsIndicators: false) {
                        ZStack { //Mark: - 영화관 로고
                            Rectangle()
                                .frame(height: 128)
                                .foregroundColor(Color(hex: "252525"))
                            Image("\(theaterName)") // #fix
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70)
                                .offset(x:0,y:10)
                        }
                        .foregroundColor(Color(hex: "252525"))
                        
                        //Mark: - 날짜 View, 포스터 View
                        MovieDayView2(movieDetailData: $movieDetailData, selectedDate: $selectedDate, theaters: $theaters, movieScheduleDataForUser: $movieScheduleDataForUser, allDays: $allDays,isShowingPopup: $isShowingPopup, theaterName: $theaterName, showSheet: $showSheet)
                        // .padding(.bottom, 20)
                        
                        //Mark: - 영화관 이름, 주소
                            VStack(spacing: 0) {
                            Rectangle()
                                .frame(height: 3)
                                .foregroundColor(Color(hex:"E5E5EA"))
                            
                            HStack {
                                VStack(alignment: .leading) {
                                    HStack {
                                        Text("\(theaterName)") // #fix
                                            .font(.system(size:28))
                                            .bold()
                                        
                                        Link(destination: URL(string: instagrams[theaterName] ?? "X") ?? URL(string: "https://map.naver.com/v5/entry/place/11591652?c=15,0,0,0,dh")!, label: {
                                            Image("Instagram_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30)
                                        })
                                        
                                        
                                        
                                        NavigationLink(destination: TestView()) { //
                                            Text("Test")
                                        }
                                    }
                                    
                                    Text("영화관 주소") // addresses[theaterName]
                                        .font(.caption)
                                        .font(.system(size:12))
                                        .bold()
                                        .padding(.bottom, 10)
                                    
                                    HStack {
                                        Text("나와의 거리")
                                        Image(systemName: "figure.walk")
                                            .foregroundColor(Color(hex: "5856D6"))
                                        Spacer()
                                        Text("\(theaters[0].handleDistance())")
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
                                    .offset(y: 55)
                                }
                                .padding(.horizontal, 10)
                                 //Spacer()
                                //    .border(.red, width: 100)
                            }
                            .padding(.leading)
                            .padding(.top, 20)
                            .padding(.bottom, 80)
                            .background(Color(hex:"687CC3").opacity(0.1))
                        }
                    }
                    .scrollContentBackground(.hidden)
                    .edgesIgnoringSafeArea(.top)
                    .onAppear {
                        
                        //                                  movieScheduleManager.fetchMovieSchedule(theaterName: theaters[0].name, date: dateManager.allDays[0])
                        
                        dateManager.fetchDate(theaterName: theaterName)
                        allDays = dateManager.allDays
                        closedDays = dateManager.closedDays
                        
                        for i in closedDays {
                            if let j = allDays.firstIndex(of: i){
                                allDays.remove(at: j)
                            }
                        }
                        
                        let dateFormatter = DateFormatter()
                        dateFormatter.dateFormat = "yyyy-MM-dd"
                        dateFormatter.timeZone = TimeZone(identifier: "UTC") // 15:00
                        selectedDate = dateFormatter.date(from: allDays[0])!
                        
                        movieScheduleManager.fetchMovieSchedule(theaterName: theaterName, date: dateFormatter.string(from: selectedDate)) // # fix
                        
                        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                            movieScheduleDataForUser = movieScheduleManager.movieScheduleDataForUserList
                        }
                    }
                    .refreshable {
                        locationDataManager.locationManager.requestLocation()
                        theaters = CheckTop3Theaters(location: locationDataManager.locationManager.location!)
                        dateManager.fetchDate(theaterName: theaterName) // #fix
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
                        
                        movieScheduleManager.fetchMovieSchedule(theaterName: theaterName, date: dateFormatter.string(from: selectedDate))
                        
                        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                            movieScheduleDataForUser = movieScheduleManager.movieScheduleDataForUserList
                        }
                    }
               // }
                    // SheetView Visaulization
                    ZStack {
                            Rectangle()
                                .foregroundColor(.white)
                                .cornerRadius(20)
                                .frame(width: 390, height: 164)
                                .offset(y: 422)
                                .shadow(radius: 3)
                        VStack {
                            Button(action: {
                                print("alert")
                            }){
                                Rectangle()
                                    .foregroundColor(.gray)
                                    .cornerRadius(3.5)
                                    .frame(width: 48, height: 4)
                                    .offset(y: 364)
                            }
                            HStack {
                                Text("영화관 탐색하기")
                                    .font(.system(size: 20))
                                    .foregroundColor(Color.black)
                                Image(systemName: "figure.hiking")
                                    .foregroundColor(Color(hex: "5856D6"))
                            }
                            .offset(x: -105, y: 377)
                        }
                    }
 
                    if isLoading {
                        LoadingView
                    }
                    
                    
                }.onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
                        isLoading.toggle()
                        // showSheet = true
                    })
                }
            }

        }
        // #end of navigationView
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
    }

extension ContentView {
    var LoadingView: some View {
        ZStack {
            Color(red: 246 / 255, green: 242 / 255, blue: 233 / 255)
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
        .onAppear {
            if locationDataManager.locationManager.authorizationStatus == .authorizedWhenInUse {
                theaters = CheckTop3Theaters(location: locationDataManager.locationManager.location!)
                theaterName = theaters[0].name // # fix
                dateManager.fetchDate(theaterName: theaterName) // # fix
                
//                movieScheduleManager.fetchMovieSchedule(theaterName: theaters[0].name, date: dateManager.allDays[0])
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
                
                // movieScheduleManager.fetchMovieSchedule(theaterName: theaters[0].name, date: dateManager.allDays[0])
                
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                    movieScheduleDataForUser = movieScheduleManager.movieScheduleDataForUserList
                    print(movieScheduleDataForUser)
                }
            }
        }
    }
}

struct AnimationView : View {
    @State var biggestCircle = false
    @State var biggerCircle = false
    @State var circle = true
    
    var body: some View {
        ZStack {
                if biggestCircle {
                    Circle()
                        .fill(Color(red: 88 / 255, green: 86 / 255, blue: 214 / 255))
                        .frame(width: 75, height: 75)
                        .opacity(0.25)
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                                biggestCircle.toggle()
                            }
                            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                                biggerCircle.toggle()
                            }
                            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
                                biggerCircle.toggle()
                            }
                        }
                }
                
            if biggerCircle {
                    Circle()
                        .fill(Color(red: 88 / 255, green: 86 / 255, blue: 214 / 255))
                        .frame(width: 50, height: 50)
                        .opacity(0.6)
                        .animation(.default, value: biggerCircle)
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                                biggestCircle.toggle()
                            }
                        }
                }
            if circle {
                Circle()
                    .fill(Color(red: 88 / 255, green: 86 / 255, blue: 214 / 255))
                    .frame(width: 25, height: 25)
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                            biggerCircle.toggle()
                        }
                    }
            }
        }.frame(width: 75, height: 75)
    }
}
