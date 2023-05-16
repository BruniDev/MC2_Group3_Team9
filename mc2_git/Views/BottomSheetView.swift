
import SwiftUI

struct BottomSheetView: View {
    
    var dateManager = DateManager()
    var movieScheduleManager = MovieScheduleManager()
    @Binding var movieScheduleDataForUser: Array<MovieScheduleDataForUser>
    @Binding var allDays : Array<String>
    @Binding var closedDays : Array<String>
    @Binding var selected : String
    let segments = ["내 근처 영화관", "내 취향 영화관"]
    @Binding var selectedDate: Date
    @Binding var theaters: [Theater]
    @Binding var theaterName : String
    @Binding var theaterDistance : String
    @State var loadingNum : Int = 1
    @State var showSettingView = false
    @State var selectSegment = 0
    
    var body : some View {
        
        VStack {
           
            Capsule()
                .fill(Color(white: 0.95))
                .frame(width: 50, height : 7)
            
            HStack {
                Text("영화관 탐색하기")
                    
                    .font(.system(size: 20).bold())
                    .foregroundColor(Color.black)
                Image(systemName: "figure.hiking")
                    .foregroundColor(Color(hex: "5856D6"))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading,30)
    
            Picker("Choose course", selection: $selected) {
                ForEach(segments, id : \.self) { segment in
                    Text(segment)
                        .tag(segment)
                }
   
            }
            .colorMultiply(Color(hex: "5856D6"))
            .pickerStyle(SegmentedPickerStyle())
           
            .frame(width: 350)
            if selected == segments[0] {
                HStack {
                    ForEach(0..<3) { num in
                        Button(action: {
                            theaterName = theaters[num].name
                            theaterDistance = theaters[num].handleDistance()
                            dateManager.fetchDate(theaterName: theaterName) // # fix
                            
                            allDays = dateManager.allDays
                            closedDays = dateManager.closedDays
                            
                            for i in closedDays {
                                if let j = allDays.firstIndex(of: i){
                                    allDays.remove(at: j)
                                }
                            }
                            
                            let dateFormatter = DateFormatter()
                            dateFormatter.dateFormat = "yyyy-MM-dd"
                            dateFormatter.timeZone = TimeZone(identifier: "UTC")
                            selectedDate = dateFormatter.date(from: allDays[0])!
                            
                            movieScheduleManager.fetchMovieSchedule(theaterName: theaterName, date: dateFormatter.string(from: selectedDate)) { result in
                                if let movieScheduleDataforUser = result {
                                    self.movieScheduleDataForUser = movieScheduleDataforUser
                                }
                            }
                        }) {
                            ZStack{
                                Rectangle()
                                    .frame(width: 109, height: 141)
                                    .foregroundColor(.white)
                                    .border(.gray)
                                    .cornerRadius(19)
                                VStack {
                                    Circle()
                                        .frame(width: 60, height: 60)
                                    Text("\(theaters[num].name)")
                                        .font(.system(size: 15.0))
                                        .foregroundColor(.black)
                                    Text("\(theaters[num].handleDistance())")
                                        .font(.system(size: 15.0))
                                        .foregroundColor(Color(hex: "5856D6"))
                                }
                            }
                        }
                    }
                }
            }
            else {
                    Text("영화관 취향 테스트를 통해 \n 취향에 맞는 영화관을 추천해 드릴게요!")
                    Button(action : {
                        self.showSettingView = true
                        print("버튼이 눌렸다")
                        
                    }){
                        Text("테스트 시작하기")
                            .font(.system(size: 20.0))
                            .fixedSize(horizontal: false, vertical: true)
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(width: 182, height: 64)
                            .foregroundColor(Color.white)
                            .background(Color(hex:"5856D6").shadow(radius: 3).cornerRadius(32.5))
                    }
                
            }
        }.background(Color.white)
            .sheet(isPresented: $showSettingView) {
               TestView(loadingNum: $loadingNum)
            }
         
    }
}


