//
//  BottomSheetView.swift
//  mc2_git
//
//  Created by 정현 on 2023/05/14.
//
import SwiftUI

struct BottomSheetView: View {
    @State private var showSheet = true
    @State private var selected = "내 근처 영화관"
    let segments = ["내 근처 영화관", "내 취향 영화관"]
 
    var body: some View {
      NavigationView {
            Button("Show Bottom Sheet") {
                showSheet = true
            }
            
            .buttonStyle(.borderedProminent)
            .sheet(isPresented: $showSheet) {
                VStack{
                    Picker("Choose course", selection: $selected) {
                        ForEach(segments, id:\.self) { segment in
                            Text(segment)
                                .tag(segment)
                        }
                    }
                    .pickerStyle(.segmented)
                    if selected == segments[0] {

                        HStack{
                            RoundedRectangle(cornerRadius: 10)
                            RoundedRectangle(cornerRadius: 10)
                            RoundedRectangle(cornerRadius: 10)
                        }
                        
                    }
                    else {
                        Text("영화관 취향 테스트를 통해 \n 취향에 맞는 영화관을 추천해 드릴게요!")
                        Button(action : {
                            print("Button pressed")
                        }) {
                            Text("테스트 시작하기")
                        }
                        .background(Color.purple)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                    }
                } .presentationDetents([.fraction(0.1),.fraction(0.25)])
            }
           
            Spacer()
        }
    }
}

struct BottomSheetView_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheetView()
    }
}

