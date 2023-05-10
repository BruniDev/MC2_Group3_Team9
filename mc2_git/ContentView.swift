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
            MovieDayView2(movieScheduleDataForUser: $movieScheduleDataForUser, allDays: $workingDays ).padding(.bottom, 20)
            
            //Mark: - 영화관 이름, 주소
            Rectangle()
                .frame(height: 5)
                .foregroundColor(Color.gray)
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
            }.padding(.leading)
        }
        Spacer()
            .onAppear{
                dateManager.fetchDate(theaterName: "인디플러스포항")
                movieScheduleManager.fetchMovieSchedule(theaterName: "인디플러스포항", date: dateManager.allDays[0])
                allDays = dateManager.allDays
                closedDays = dateManager.closedDays
//                workingDays = allDays
                for i in closedDays {
                    if let j = allDays.firstIndex(of: i){
                        allDays.remove(at: j)
                    }
                }
//                print("!!!!!!!!!!")
//                print(allDays)
//                print(closedDays)
//                print(workingDays)
//                print("!!!!!!!!!!")
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                    movieScheduleDataForUser = movieScheduleManager.movieScheduleDataForUserList
                    print(movieScheduleDataForUser)
                }
            }
        
    }//Mark: - End VStack
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


