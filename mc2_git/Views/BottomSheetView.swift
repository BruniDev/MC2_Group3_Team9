
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
    @Binding var padding_bottom : CGFloat
    @Binding var bottomSheetPresented : Bool
    @State var loadingNum : Int = 1
    @State var showSettingView = false
    @State var isSelected : Int = 3
    @State var borderColors : [Color] = [Color.gray, Color.gray, Color.gray]
    @State var buttonSelected : [Double] = [0, 0, 0]
    @Binding var startingOffsetY : CGFloat
    @Binding var currentDragOffsetY : CGFloat
    @Binding var endingOffsetY : CGFloat
    
    var body : some View {
        
        VStack {
            Capsule()
                .fill(Color(white: 0.9)) // # 0.95 --> 0.8
                .frame(width: 48, height : 4)
                .padding(.top, 10)
            
            HStack {
                Text("영화관 탐색하기")
                    .font(.system(size: 20).bold())
                    .foregroundColor(Color.black)
                Image(systemName: "figure.hiking")
                    .foregroundColor(Color(hex: "5856D6"))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 24)
            .padding(.top, 8)
            .padding(.bottom, padding_bottom)
            
            VStack {
                Picker("Choose course", selection: $selected) {
                    ForEach(segments, id : \.self) { segment in
                        Text(segment)
                            .tag(segment)
                    }
                }
                .colorMultiply(Color.white)
                .pickerStyle(SegmentedPickerStyle())
                .frame(width: 282)
                .padding(.bottom, 1)
            }
            .background(Color(hex: "5856D6"))
            .cornerRadius(8.91)
            .padding(.bottom, 7)
            
            if selected == segments[0] {
                HStack (spacing: 11) {
                    ForEach(0..<3) { num in
                        Button(action: {
                            isSelected = num
                            toggleBorderColors(num: num)
                            
                            for i in 0..<3 {
                                if i != num && buttonSelected[i] == 1 {
                                    buttonSelected[i] = 0
                                }
                                
                                buttonSelected[num] = 1
                            }
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.25, execute: { // #loading time
                                withAnimation(.spring()){
                                    startingOffsetY = UIScreen.main.bounds.height * 0.89
                                    currentDragOffsetY = 0
                                    endingOffsetY = .zero
                                }
                                bottomSheetPresented = false
                                padding_bottom = 33
                                
                                theaterName = theaters[num].name
                                theaterDistance = theaters[num].transferToMobility()
                                dateManager.fetchDate(theaterName: theaterName)
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
                            })
                        },label: {
                            ZStack {
                                VStack {
                                    ZStack {
                                        Image("\(theaters[num].name)_circle")
                                            .resizable()
                                            .frame(width: 60, height: 60)
                                            .aspectRatio(contentMode: .fill)
                                            .background(RoundedRectangle(cornerRadius: 40)
                                                .strokeBorder(borderColors[num], lineWidth: 1)
                                                .frame(width: 61, height: 61))
                                    
                                        Circle()
                                            .frame(width: 60, height: 60)
                                            .foregroundColor(Color(hex: "5856D6").opacity(0.5))
                                            .opacity(buttonSelected[num])
                                        Image("buttonSelected") // 중앙 원 뚫린 사진 받기 to 구김
                                        //.resizable()
                                            .frame(width: 21, height: 22)
                                        //.aspectRatio(contentMode: .fill)
                                            .opacity(buttonSelected[num] * 2 / 3)
                                    }
                                    .padding(.top, 13)
                                    Spacer()
                                    Text("\(theaters[num].name)")
                                        .font(.system(size: 15.0))
                                        .foregroundColor(.black)
                                        .fontWeight(.bold)
                                        .padding(.bottom, 1)
                                    Text("\(theaters[num].handleDistance())")
                                        .font(.system(size: 14.0))
                                        .foregroundColor(Color(hex: "5856D6"))
                                        .padding(.bottom, 15)
//                                        .fontWeight(.bold)
                                }
                                .frame(width: 109, height: 141)
                            }
                        })
                        .background(RoundedRectangle(cornerRadius: 19)
                            .strokeBorder(borderColors[num], lineWidth: 1)
                            .frame(width: 109, height: 150)) // h : 141
                        .padding(.bottom, 5)
                        //.padding(.horizontal, 11)
                    }
                }
            }
            else {
                Text("영화관 취향 테스트를 통해\n취향에 맞는 영화관을 추천해 드릴게요!")
                    .multilineTextAlignment(.center)
                    .padding(.top, 13)
                    .padding(.bottom, 15)
                Button(action : {
                    self.showSettingView = true
                    print("버튼이 눌렸다")
                    
                }){
                    Text("테스트 시작하기")
                        .font(.system(size: 20.0))
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: 182, height: 50)
                        .foregroundColor(Color.white)
                        .background(Color(hex:"5856D6").shadow(radius: 3).cornerRadius(32.5))
                }
            }
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
        //.frame(height: 307)
        .background(Color.white)
        .cornerRadius(20).shadow(radius: bottomSheetPresented ? 0 : 5)
        .sheet(isPresented: $showSettingView) {
            TestView(loadingNum: $loadingNum, showSettingView:$showSettingView)
        }
        
    }
    
    func toggleBorderColors(num : Int) {
        for i in 0..<3 {
            if i == num {
                borderColors[num] = Color(hex: "5856D6")
            }
            else {
                if borderColors[i] == Color(hex: "5856D6") {
                    borderColors[i] = Color.gray
                }
            }
        }
    }
}


