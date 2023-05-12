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

let addresses : [String : String] = [
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

struct ContentView: View {
    var dateManager = DateManager()
    var movieScheduleManager = MovieScheduleManager()
    @State var allDays : Array<String> = []
    @State var closedDays : Array<String> = []
    @State var workingDays : Array<String> = []
    @State var movieScheduleDataForUser: Array<MovieScheduleDataForUser> = []
    @State var locationDataManager = LocationDataManager()
    @State var theaters : [Theater] = [Theater()]
    @State var isLoading: Bool = true
    @State var biggestCircle : Bool = false
    @State var biggerCircle : Bool = false
    @State var isShowingPopup : Bool = false
   
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                ZStack {
                    ZStack {
                                ScrollView {
                                    ZStack { //Mark: - 영화관 로고
                                        Rectangle()
                                            .frame(height: 128)
                                            .foregroundColor(Color(hex: "252525"))
                                        Image("\(theaters[0].name)")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 70)
                                            .offset(x:0,y:10)
                                    }
                                    .foregroundColor(Color(hex: "252525"))
                                    
                                    //Mark: - 날짜 View, 포스터 View
                                    MovieDayView2(theaters: $theaters, movieScheduleDataForUser: $movieScheduleDataForUser, allDays: $workingDays,isShowingPopup: $isShowingPopup)
                                        .padding(.bottom, 20)
                                    
                                    //Mark: - 영화관 이름, 주소
                                    Rectangle()
                                        .frame(height: 3)
                                        .foregroundColor(Color.gray)
                                    HStack {
                                        VStack(alignment: .leading) {
                                            HStack {
                                                Text("\(theaters[0].name)")
                                                    .font(.system(size:20))
                                                    .bold()

                                                Link(destination: URL(string: instagrams[theaters[0].name] ?? "X") ?? URL(string: "https://map.naver.com/v5/entry/place/11591652?c=15,0,0,0,dh")!, label: {
                                                    Image("Instagram_icon")
                                                        .resizable()
                                                        .scaledToFit()
                                                        .frame(width: 30)
                                                })
                                            }
                                            
                                            Text("영화관 주소")
                                                .font(.caption)
                                                .bold()
                                                .padding(.bottom, 10)
                                            
                                            HStack {
                                                Text("나와의 거리")
                                                Image(systemName: "figure.walk")
                                                    .foregroundColor(.purple)
                                                Spacer()
                                                Text("\(theaters[0].handleDistance())")
                                                    .multilineTextAlignment(.trailing)
                                                    .foregroundColor(.purple)
                                                    .bold()
                                                Link(destination: URL(string: "https://map.naver.com/v5/entry/place/11591652?c=15,0,0,0,dh")!, label: {
                                                    Image("location")
                                                        .resizable()
                                                        .scaledToFit()
                                                        .frame(width: 30)
                                                })
                                            }
                                        }
                                        .padding(.horizontal, 10)
                                        Spacer()
                                    }
                                    .padding(.leading)
                                    .padding(.top, 20)
                                    .padding(.bottom, 40)
                                    .background(Color.gray)
                                }
                                .edgesIgnoringSafeArea(.top)
                                .onAppear {
                                    dateManager.fetchDate(theaterName: theaters[0].name)
                                    movieScheduleManager.fetchMovieSchedule(theaterName: theaters[0].name, date: dateManager.allDays[0])
                                    allDays = dateManager.allDays
                                    closedDays = dateManager.closedDays
                                    
                                    for i in closedDays {
                                        if let j = allDays.firstIndex(of: i){
                                            allDays.remove(at: j)
                                        }
                                    }
                                    
                                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                                        movieScheduleDataForUser = movieScheduleManager.movieScheduleDataForUserList
                                        print(movieScheduleDataForUser)
                                    }
                                }
                                .refreshable {
                                    locationDataManager.locationManager.requestLocation()
                                    theaters = CheckTop3Theaters(location: locationDataManager.locationManager.location!)
                                    dateManager.fetchDate(theaterName: theaters[0].name)
                                    movieScheduleManager.fetchMovieSchedule(theaterName: theaters[0].name, date: dateManager.allDays[0])
                                    allDays = dateManager.allDays
                                    closedDays = dateManager.closedDays
                                    //                workingDays = allDays
                                    
                                    for i in closedDays {
                                        if let j = allDays.firstIndex(of: i){
                                            allDays.remove(at: j)
                                        }
                                    }
                                    
                                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                                        movieScheduleDataForUser = movieScheduleManager.movieScheduleDataForUserList
                                        print(movieScheduleDataForUser)
                                    }
                                }
                        }
                        
                        
                        if isLoading {
                            LoadingView
                        }
                    }.onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 10, execute: {
                            isLoading.toggle()
                        })
                    }
                }
                .overlay() {
                    if isShowingPopup {
                        Color.black.opacity(0.5)
                            .ignoresSafeArea()
                        
                        CustomAlertView(isShowingPopup: $isShowingPopup)
                            .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.9)
                            .background(Color.white)
                    }
                }
            }
        }
    }

extension ContentView {
    
    var LoadingView: some View {
        ZStack {
            Color(red: 246 / 255, green: 242 / 255, blue: 233 / 255).ignoresSafeArea()
            VStack(alignment: .leading) {
                Text("가까운").font(.largeTitle.bold()).font(.system(size: 34.0))
                Text("독립영화관으로").font(.largeTitle.bold()).font(.system(size: 34.0))
                Text("떠납니다.").font(.largeTitle.bold()).font(.system(size: 34.0))
                Text("나와 가장 가까운 독립영화관을").font(.headline).font(.system(size: 17.0)).foregroundColor(Color.gray)
                Text("찾아볼까요?").font(.headline).font(.system(size: 17.0)).foregroundColor(Color.gray)
                AnimationView()
            }
        }
        .onAppear {
            if locationDataManager.locationManager.authorizationStatus == .authorizedWhenInUse {
                theaters = CheckTop3Theaters(location: locationDataManager.locationManager.location!)
                dateManager.fetchDate(theaterName: theaters[0].name)
                movieScheduleManager.fetchMovieSchedule(theaterName: theaters[0].name, date: dateManager.allDays[0])
                allDays = dateManager.allDays
                closedDays = dateManager.closedDays

                for i in closedDays {
                    if let j = allDays.firstIndex(of: i){
                        allDays.remove(at: j)
                    }
                }
                
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
                        .frame(width: 30, height: 30)
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
                        .frame(width: 20, height: 20)
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
                    .frame(width: 10, height: 10)
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                            biggerCircle.toggle()
                        }
                    }
            }
        }.frame(width: 30, height: 30)
    }
}
