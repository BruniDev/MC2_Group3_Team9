//
//  ContentView.swift
//  mc2_git
//
//  Created by 박지은 on 2023/05/03.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
//        CustomAlertView()
        
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
            MovieDayView2().padding(.bottom, 20)

            //Mark: - 영화관 이름, 주소
//            ZStack {
//                Rectangle()
//                    .frame(height: 150)
//                    .foregroundColor(.green)
//                VStack {
                    Rectangle()
                        .frame(height: 5)
                        .foregroundColor(Color.gray)
//                        .padding(.bottom, 40)
            
//            VStack {
                HStack {
            VStack(alignment: .leading) {
                                HStack {
                                    Text("영화관 이름")
                                        .font(.system(size:32))
                                    Image("Instagram_icon")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 30)
                                }

                                Text("영화관 주소")
                                
                                HStack {
                                    Text("나와의 거리")
                                    Image(systemName: "figure.walk")
                                    Spacer()
                                    Text("거리km")
                                        .multilineTextAlignment(.trailing)
                                }
                            }
                    Spacer()
//                            .padding(.bottom, 0)
//                            .alignmentGuide(.leading) { _ in 20 }
                }.padding(.leading)
//            }
//            Spacer()
            

    
            
            
//                    Text("영화관 주소")
//                    Spacer()
//                    HStack {
//                        Text("나와의 거리")
//                    }
//                }//Mark: - End VStack
//                .padding(.bottom, 50)
//            Spacer()
//            }//Mark: - End ZStack
        }//Mark: - End VStack
//        Spacer()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CustomAlertView()
//        ContentView()
//        Mark: - 아이폰 status bar 색상 white로 변경
//        var preferredStatusBarStyle: UIStatusBarStyle {
//            return .lightContent
//        }
    }
}


