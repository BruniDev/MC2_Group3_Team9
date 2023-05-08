//
//  MovieDayView2.swift
//  mc2_git
//
//  Created by 박지은 on 2023/05/07.
//

import SwiftUI

struct MovieDayView2: View {
    
        @State var monthString: String = "Not Set"
    let calendar = Calendar.current
    let dates = getWeek()
    
    var body: some View {
        VStack {
            //            Text(getMonth(date: Date()))
            //                 ScrollView(.horizontal) {
            Text("상영중 영화")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .bold()
            HStack(spacing: 25) {
                
                Button(action: {
                    
                }, label: {
                    VStack {
                        Text("오늘")
                            .bold()
                        Text(getDayShort(date: Date()))
                            .font(.caption)
                    }.foregroundColor(.green)
                        .padding(5)
                }).background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray). frame(width: 40, height: 50))
                
                
//                ForEach(dates, id: \.self) { day in
//                    ZStack {
//                        Button(action: {
//
//                        }, label: {
//                            VStack {
//                                Text("\(getDayNumber(date: day))")
//                                    .bold()
//                                Text(getDayShort(date: day))
//                                    .font(.caption)
//                            }.foregroundColor(.green)
//                                .padding(5)
//                        }).background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray) .frame(width: 40, height: 50))
//                    }
//                }//Mark: - end ForEach
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
        .compactMap { calendar.date(byAdding: .day, value: $0 - dayOfWeek, to: currentDate) }
        .prefix(7)
    
    daysMonth[0] = currentDate
    
    return Array(daysMonth)
}

struct MovieDayView2_Previews: PreviewProvider {
    static var previews: some View {
        MovieDayView2()
    }
}
