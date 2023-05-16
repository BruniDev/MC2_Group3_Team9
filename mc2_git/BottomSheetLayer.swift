//
//  BottomSheetLayer.swift
//  mc2_git
//
//  Created by 정현 on 2023/05/13.
//

import SwiftUI

struct BottomSheetLayer: View {
    var type = ["가까운 극장","내 취향 찾기"]
    @State private var showSheet = true
    @State private var select = "가까운 극장"
    var body: some View {
        
        VStack {
            Button("Show Bottom Sheet") {
                showSheet.toggle()
            }
            .buttonStyle(.borderedProminent)
            .sheet(isPresented: $showSheet) {
                VStack {
                    Picker("What is your favorite color?", selection: $select) {
                        ForEach(type, id: \.self) {
                          Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                    if select == "가까운 극장" {
                        HStack{
                            RoundedRectangle(cornerRadius: 12,style: .continuous)
                                .fill(Color(.blue))
                                
                            RoundedRectangle(cornerRadius: 30)
                                .fill(Color(.blue))
                            RoundedRectangle(cornerRadius: 30)
                                .fill(Color(.blue))
                        }
                        
                    }
                    else {
                        Button("설문조사") {
                            showSheet.toggle()
                        }
                    }
                        
                }
                .presentationDetents([.fraction(0.1), .fraction(0.25)])
                
            }
            
            
            Spacer()
        }
    }
}

struct BottomSheetLayer_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheetLayer()
    }
}
