//
//  MovieDayView2.swift
//  mc2_git
//
//  Created by 박지은 on 2023/05/07.
//

import SwiftUI

struct MovieDayView2: View {
    
    @State var monthString: String = "Not Set"
    @State var selectedDate: Date?
    
    let calendar = Calendar.current
    let dates = getWeek()
    
    init() {
        selectedDate = Date()
    }
    
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
                    MovieListView(categoryName: "Top Movies")
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
    
    daysMonth[0] = calendar.startOfDay(for: currentDate)
    
    return Array(daysMonth)
}

struct MovieDayView2_Previews: PreviewProvider {
    static var previews: some View {
        MovieDayView2()
    }
}
