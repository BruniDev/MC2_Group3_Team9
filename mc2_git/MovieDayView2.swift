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
    @State var selectedDate: Date = Date()
    @Binding var movieScheduleDataForUser: Array<MovieScheduleDataForUser>
    @Binding var allDays : Array<String>
    @Binding var theaters : [Theater]
    
    
    let calendar = Calendar.current
    var dates = getWeek()
    var stringDates: Array<String> = []
    
    
    var body: some View {
        VStack {
            Text("상영중 영화")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .padding(.top, 20)
                .bold()
            HStack(spacing: 25) {
                ForEach(dates, id: \.self) { day in
                    ZStack {
                        Button(action: {
                            selectedDate = day
                            print("선택된날짜")
                            print(dates)
                            let dateFormatter = DateFormatter()
                            dateFormatter.dateFormat = "yyyy-MM-dd"
                            movieScheduleManager.fetchMovieSchedule(theaterName: theaters[0].name, date: dateFormatter.string(from: selectedDate))
                            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                                movieScheduleDataForUser = movieScheduleManager.movieScheduleDataForUserList
                                print(movieScheduleDataForUser)
                            }
                        }, label: {
                            VStack {
                                Text("\(getDayNumber(date: day))")
                                    .bold()
                                Text(getDayShort(date: day))
                                    .font(.system(size: 8))
                            }.padding(5)
                                .foregroundColor((selectedDate == day ? Color.white : Color.black))
                        }).background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(selectedDate == day ? Color.black : Color.clear)
                                .frame(width: 35, height: 40)
                        )
                    }//Mark: - End ZStack
                }//Mark: - end ForEach
                .padding(.top, 15)
            }
            
            NavigationView {
                ScrollView {
                    MovieListView(movieScheduleDataForUser: $movieScheduleDataForUser, categoryName: "Top Movies")
                }
            }
        }
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
    print("pleaseeeee")
    print(daysMonth)
    
    daysMonth[0] = calendar.startOfDay(for: currentDate)
    
    return Array(daysMonth)
}

struct MovieDayView2_Previews: PreviewProvider {
    static var previews: some View {
        MovieDayView2(movieScheduleDataForUser: .constant([]), allDays: .constant([]), theaters: .constant([]))
    }
}
