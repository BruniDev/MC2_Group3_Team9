//
//  ContentView.swift
//  mc2_git
//
//  Created by 박지은 on 2023/05/03.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPresentingCustomAlert = false
    @State private var isShowingPopup = false
    
    
    var body: some View {
        
//                CustomAlertView()
        
        VStack {
            //Mark: - 영화관 로고
            ZStack {
                Rectangle()
                    .frame(height: 135)
                    .foregroundColor(.black)

                Image("영화관로고")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70)
            }.background(.black)

            //Mark: - 날짜 View, 포스터 View
            
//            Button(action: {
//                self.isPresentingCustomAlert = true
//            }) {
//                MovieDayView2()
//                    .padding(.bottom, 20)
//            }.popover(isPresented: $isPresentingCustomAlert, arrowEdge: .top) {
//                CustomAlertView()
//            }
            
            MovieDayView2(isShowingPopup: $isShowingPopup)
                .padding(.bottom, 20)
//                .onTapGesture {
//                    self.isPresentingCustomAlert = true
//                }.sheet(isPresented: $isPresentingCustomAlert) {
//                    CustomAlertView()
//                }


            //Mark: - 영화관 이름, 주소
            Rectangle()
                .frame(height: 3)
                .foregroundColor(Color.gray)
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("영화관 이름")
                            .font(.system(size:25))
                            .bold()
                        Image("Instagram_icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                    }

                    Text("영화관 주소")
                        .font(.caption)
                        .foregroundColor(Color.gray)
                        .bold()
                        .padding(.bottom, 10)
                    
                    

                    HStack {
                        Text("나와의 거리")
                        Image(systemName: "figure.walk")
                        Spacer()
                        Text("거리km")
                            .multilineTextAlignment(.trailing)
                        Image("location")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                    }
                }//Mark: - END VStack
                .padding(.horizontal, 10)
                Spacer()
            }
            .padding(.leading)
                .padding(.bottom, 50)
                .background(Color.red)
//            Spacer()
        }//Mark: - End VStack
        .overlay() {
            if isShowingPopup {
                Color.black.opacity(0.5)
                    .ignoresSafeArea()
                
                    CustomAlertView(isShowingPopup: $isShowingPopup)
                    
                    .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height - 120)
                    .background(Color.white)
//                    .border(.black)
                

                

                
            }
        }//Mark: - END overlay
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        //        Mark: - 아이폰 status bar 색상 white로 변경
        var preferredStatusBarStyle: UIStatusBarStyle {
            return .lightContent
        }
    }
}


