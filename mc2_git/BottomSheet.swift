//
//  BottomSheet.swift
//  mc2_git
//
//  Created by 정현 on 2023/05/10.
//

import SwiftUI


struct BottomSheetView: View {
    @State var isShowingSheet = true

    var body: some View {
        Button("") {
            isShowingSheet = true
        }
        .sheet(isPresented: $isShowingSheet) {
            ZStack {
                Color(red: 1, green: 1, blue: 1)
                Text("가까운 영화관 Top 3")
                    .frame(
                        maxWidth : .infinity,
                        maxHeight: .infinity,
                        alignment: .topLeading
                    )
                    .font(.headline)
                    .padding()
                    
            }
            .presentationDetents([.large, .fraction(0.102)])
        }
    }
}
struct BottomSheetView_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheetView()
    }
}
