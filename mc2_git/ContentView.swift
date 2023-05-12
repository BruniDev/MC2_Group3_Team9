//
//  ContentView.swift
//  mc2_git
//
//  Created by 박지은 on 2023/05/03.
//

import SwiftUI

struct ContentView: View {
    
    var dateManager = DateManager()
    var movieScheduleManager = MovieScheduleManager()
    @State var allDays : Array<String> = []
    @State var closedDays : Array<String> = []
    @State var workingDays : Array<String> = []
    @State var movieScheduleDataForUser: Array<MovieScheduleDataForUser> = []
    @State private var isShowingPopup = false
    @State private var isPresentingCustomAlert = false
    
    var body: some View {
        
        GeometryReader { geometry in
            VStack(spacing: 0){
                
                //Mark: - Top, 영화관 로고
                ZStack {
                    Rectangle()
                        .frame(height: 128)

                        .foregroundColor(Color(hex: "252525"))
                    Image("영화관로고")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70)
                }
                .background(Color(hex: "252525"))
                
                //Mark: - 날짜 View, 포스터 View
                MovieDayView2(movieScheduleDataForUser: $movieScheduleDataForUser, allDays: $workingDays, isShowingPopup: $isShowingPopup)
                    .padding(.bottom, 20)
                
                //Mark: - 영화관 이름, 주소
                Rectangle()
                    .frame(height: 3)
                    .foregroundColor(Color.gray)
                HStack {
                    VStack(alignment: .leading) {
                        HStack {
                            Text("영화관 이름")
                                .font(.system(size:20))
                                .bold()
                            Link(destination: URL(string: "https://www.instagram.com/__0330/")!, label: {
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
                            Text("거리km")
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
                    }//Mark: - END VStack
                    .padding(.horizontal, 10)
                    Spacer()
                }//Mark: - END HStack
                .padding(.leading)
                .padding(.top, 20)
                .padding(.bottom, 40)
                .background(Color.gray)
            }//Mark: - End VStack
            .overlay() {
                if isShowingPopup {
                    Color.black.opacity(0.5)
                        .ignoresSafeArea()
                    
                    CustomAlertView(isShowingPopup: $isShowingPopup)
                        .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.9)

    //
    //                    .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height - 140)
                        .background(Color.white)
        }
        

            }
        }//Mark: - END overlay
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        //        Mark: - 아이폰 status bar 색상 white로 변경
//        var preferredStatusBarStyle: UIStatusBarStyle {
//            return .lightContent
//        }
    }
}


