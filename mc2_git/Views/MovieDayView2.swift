//
//  MovieDayView2.swift
//  mc2_git
//
//  Created by 박지은 on 2023/05/07.
//

import SwiftUI

struct MovieDayView2: View {
    
    var movieScheduleManager = MovieScheduleManager()
    @State var monthString: String = "Not Set"
    @State var scrollToTop: Bool = false
    @Binding var movieDetailData: MovieDetailData
    @Binding var selectedDate: Date
    @Binding var theaters: [Theater]
    @Binding var movieScheduleDataForUser: Array<MovieScheduleDataForUser>
    @Binding var allDays : Array<String>
    @Binding var isShowingPopup: Bool
    @Binding var theaterName : String
    @Binding var showSheet : Bool
    @State private var selected = "내 근처 영화관"
    let segments = ["내 근처 영화관", "내 취향 영화관"]

    let calendar = Calendar.current
    var dates = getWeek()
    var stringDates: Array<String> = []
    
    
    var body: some View {
        VStack {
            Text("상영중인 영화")
                .font(.system(size: 20))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 26)
                .padding(.top, 10)
                .bold()
            HStack(spacing: 20) {
                ForEach(dates, id: \.self) { day in
                    ZStack {
                        Button(action: {
                            scrollToTop = true
                            selectedDate = day
                            let dateFormatter = DateFormatter()
                            dateFormatter.dateFormat = "yyyy-MM-dd"
                            movieScheduleManager.fetchMovieSchedule(theaterName: theaterName, date: dateFormatter.string(from: selectedDate)) { result in
                                if let movieScheduleDataforUser = result {
                                    self.movieScheduleDataForUser = movieScheduleDataforUser
                                }
                            }
                        }, label: {
                            VStack {
                                Text("\(getDayNumber(date: day))")
                                    .font(.system(size: 17))
                                    .bold()
                                Text(getDayShort(date: day))
                                    .font(.system(size: 11))
                            }.padding(5)
                                .foregroundColor(foregroundCheck(aDay: day, allDays: allDays, selectedDate: selectedDate))
                        }).background(
                            RoundedRectangle(cornerRadius: 10)
                                .strokeBorder(borderCheck(aDay: day, allDays: allDays, selectedDate: selectedDate), lineWidth: 1)
                                .background(RoundedRectangle(cornerRadius: 10).fill(fillCheck(aDay: day, allDays: allDays, selectedDate: selectedDate)))
                                .frame(width: 42, height: 48)
                        )
                        .disabled(closedDayCheck(aDay: day, allDays: allDays))
                    }
                    .padding(.bottom, 10)//Mark: - END ZStack
                }//Mark: - END ForEach
                .onAppear {
                    let dateFormatter = DateFormatter()
                    dateFormatter.dateFormat = "yyyy-MM-dd"
                    selectedDate = dateFormatter.date(from: allDays[0])!
                }
            }
            .padding(.horizontal, 27)//Mark: - END HStack
            
            
            VStack {
                MovieListView(movieScheduleDataForUser: $movieScheduleDataForUser, isShowingPopup: $isShowingPopup, movieDetailData: $movieDetailData, scrollToTop: $scrollToTop)
            }

        }//VStack Ended
    }
}

//Mark: - 몇일
func getDayNumber(date: Date) -> Int {
    let calendar = Calendar.current
    let components = calendar.dateComponents([.day], from: date)
    return components.day ?? 0
}

//Mark: - 요일
func getDayShort(date: Date) -> String {
    let calendar = Calendar.current
    
    if calendar.isDateInToday(date) {
        return "오늘"
    }else if calendar.isDateInTomorrow(date) {
        return "내일"
    } else {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "E"
        dateFormatter.locale = Locale(identifier: "ko_KR")
        return dateFormatter.string(from: date)
    }
}

func getWeek() -> [Date] {
  
    let currentDate = Date()
    
    let calendar = Calendar.current
    let dayOfWeek = calendar.component(.weekday, from: currentDate)
    
    let range = calendar.range(of: .day, in: .month, for: currentDate)!
    
    
    var daysMonth = (range.lowerBound ..< range.upperBound)
        .compactMap { calendar.date(byAdding: .day, value: $0 - 1 , to: currentDate) }
        .prefix(7)
    
    daysMonth[0] = calendar.startOfDay(for: currentDate)
    
    return Array(daysMonth)
}

func closedDayCheck(aDay: Date, allDays: Array<String>) -> Bool{
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    if allDays.contains(dateFormatter.string(from: aDay)) == true {
        return false
    } else {
        return true
    }
}

func foregroundCheck(aDay: Date, allDays: Array<String>, selectedDate: Date) -> Color {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    if allDays.contains(dateFormatter.string(from: aDay)) == true {
        if dateFormatter.string(from: selectedDate) == dateFormatter.string(from: aDay) {
            return Color.white
        }else{
            return Color.black
        }
    } else {
        return Color(hex: "999999")
    }
}

func fillCheck(aDay: Date, allDays: Array<String>, selectedDate: Date) -> Color {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    if allDays.contains(dateFormatter.string(from: aDay)) == true {
        if dateFormatter.string(from: selectedDate) == dateFormatter.string(from: aDay) {
            return Color(hex: "5856D6")
        }else{
            return Color.white
        }
    } else {
        return Color.white
    }
}

func borderCheck(aDay: Date, allDays: Array<String>, selectedDate: Date) -> Color {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    if allDays.contains(dateFormatter.string(from: aDay)) == true {
        if dateFormatter.string(from: selectedDate) == dateFormatter.string(from: aDay) {
            return Color(hex: "5856D6")
        }else{
            return Color.black
        }
    } else {
        return Color(hex: "999999")
    }
}

//struct MovieDayView2_Previews: PreviewProvider {
//    static var previews: some View {
//        MovieDayView2(movieScheduleDataForUser: .constant([]), allDays: .constant([]), isShowingPopup: $isShowingPopup)
//    }
//}
