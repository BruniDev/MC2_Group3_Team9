//
//  BottomSheetView.swift
//  mc2_git
//
//  Created by 정현 on 2023/05/14.
//
import SwiftUI

struct BottomSheetView: View {
    @State private var selected = "내 근처 영화관"
    let segments = ["내 근처 영화관", "내 취향 영화관"]
    @Binding var theaterName : String
    @Binding var theaters: [Theater]
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack( ){
               
                Text("영화관 탐색하기")
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
                
                Picker("Choose course", selection: $selected) {
                    ForEach(segments, id:\.self) { segment in
                        Text(segment)
                            .tag(segment)
                    }
                }
                .pickerStyle(.segmented)
                if selected == segments[0] {
                    
                    HStack{
                        Button(action: {
                            theaterName = theaters[0].name
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
                                    Text("\(theaters[0].name)")
                                        .font(.system(size: 15.0))
                                        .foregroundColor(.black)
                                    Text("\(theaters[0].handleDistance())")
                                        .font(.system(size: 15.0))
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                        
                        Button(action: {
                            theaterName = theaters[1].name
                        }) {
                            VStack {
                                Circle()
                                    .frame(width: 60, height: 60)
                                Text("\(theaters[1].name)")
                                    .font(.system(size: 15.0))
                                    .foregroundColor(.black)
                                Text("\(theaters[1].handleDistance())")
                                    .font(.system(size: 15.0))
                                    .foregroundColor(.gray)
                            }
                            .frame(width: 109, height: 141)
                            .border(.gray)
                            .cornerRadius(19)
                        }
                        
                        Button(action: {
                            theaterName = theaters[2].name
                        }) {
                            VStack {
                                Circle()
                                    .frame(width: 60, height: 60)
                                Text("\(theaters[2].name)")
                                    .font(.system(size: 15.0))
                                    .foregroundColor(.black)
                                Text("\(theaters[2].handleDistance())")
                                    .font(.system(size: 15.0))
                                    .foregroundColor(.gray)
                            }
                            .frame(width: 109, height: 141)
                            .border(.gray)
                            .cornerRadius(19)
                            
                        }
                    }
                }
                else {
                    Text("영화관 취향 테스트를 통해 \n 취향에 맞는 영화관을 추천해 드릴게요!")
                    
                    NavigationLink(destination: TestView()) {
                        Text("테스트 시작하기")
                            .font(.system(size: 20.0))
                            .fixedSize(horizontal: false, vertical: true)
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(width: 182, height: 64)
                            .foregroundColor(Color.white)
                            .background(Color(hex:"5856D6").shadow(radius: 3).cornerRadius(32.5))
                    }
                    //                        Button(action : {
                    //
                    //                        }) {
                    //                            Text("테스트 시작하기")
                    //                        }
                }
            }
        }
        .presentationDetents([.fraction(0.05),.fraction(0.30)])
           Spacer()
           
           
   }
}

//struct BottomSheetView_Previews: PreviewProvider {
//    static var previews: some View {
//        BottomSheetView()
//    }
//}

