////
////  MovieListView.swift
////  mc2_git
////
////  Created by 박지은 on 2023/05/06.
////
//
//import SwiftUI
//
//struct MovieDayView: View {
//
//    @State var date = Date()
//    @State var data : DateType!
//
//    var body: some View {
//        GeometryReader{ _ in
//            VStack {
//                if self.data != nil {
//                    ZStack {
//                        VStack(spacing: -5) {
//                            ZStack {
//                                HStack {
////                                    Spacer()
//                                    Rectangle()
//                                        .cornerRadius(8)
//                                        .frame(width: 35, height: 45)
//
//
//
//                                    Text(self.data.Month)
//                                        .font(.title)
//                                        .bold()
//                                    Text(self.data.Date)
//                                        .font(.title)
//                                        .bold()
////                                    Spacer()
//                                }.padding(.vertical)
////                                HStack {
////                                    Button(action: {
////                                        self.date = Calendar.current.date(byAdding: .day, value: -1, to: self.date)!
////                                        self.UpdateDate()
////                                    }) {
////                                        Image(systemName: "chevron.left")
////                                            .foregroundColor(.black)
////                                    }
////                                    Spacer()
////                                    Button(action: {
////                                        self.date = Calendar.current.date(byAdding: .day, value: 1, to: self.date)!
////                                        self.UpdateDate()
////                                    }) {
////                                        Image(systemName: "chevron.right")
////                                            .foregroundColor(.black)
////                                    }
////                                }.padding(.horizontal, 30)
//                            }
//                            Text(self.data.Day)
//                                .font(.caption)
//                        }
//                    }.frame(width: UIScreen.main.bounds.width)
//
//
//                    NavigationView {
//                        ScrollView {
//                            MovieListView(categoryName: "Top Movies")
//                        }
//                    }
//
////                    VStack {
////                        ScrollView(.horizontal) {
////                            HStack {
////                                Image("post1")
////                                    .resizable()
////                                    .scaledToFit()
////                                    .frame(width: 230)
////                            }
////                        }
////                    }
//
//
//
//                }
//
//
//
//            }
//        }
//        .onAppear {
//            self.UpdateDate()
//
//
//
//
//        }
//
//
//
//        }
//
//        func UpdateDate() {
//            let current = Calendar.current
//
//            let date = current.component(.day, from: self.date)
//            let monthNo = current.component(.month, from: self.date)
//            let month = current.monthSymbols[monthNo - 1]
//            let weekno = current.component(.weekday, from: self.date)
//            let day = current.weekdaySymbols[weekno - 1]
//
//            self.data = DateType(Day: day, Date: "\(date)일", Month: month)
//        }
//
//    }
//
//    struct DateType {
//        var Day: String
//        var Date: String
//        var Month: String
//    }
//
//    struct MovieDayView_Previews: PreviewProvider {
//        static var previews: some View {
//            MovieDayView()
//        }
//    }
//
