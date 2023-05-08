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
                    .frame(height: 100)
                    .foregroundColor(.black)

                Image("영화관로고")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 70)
            }.background(.black)

            //Mark: - 날짜 View, 포스터 View
            MovieDayView2()

            //Mark: - 영화관 이름, 주소
            ZStack {
                Rectangle()
                    .frame(height: 150)
                    .foregroundColor(.green)
                VStack {
                    HStack {
                        Text("영화관 이름")
                            .font(.system(size:32))
                        Text("SNS")
                    }
                    Text("영화관 주소")
                }
            }.background(Color.green)
        }//Mark: - End VStack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        //Mark: - 아이폰 status bar 색상 white로 변경
        var preferredStatusBarStyle: UIStatusBarStyle {
            return .lightContent
        }
    }
}


