//
//  Post.swift
//  mc2_git
//
//  Created by 박지은 on 2023/05/06.
//

import SwiftUI

struct CustomAlertView: View {
    
    @Binding var isShowingPopup : Bool
    
    var body: some View {
        
//        ZStack {
//            BlurView()
            VStack {
                HStack {
                    Button(action: {
                        isShowingPopup = false
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.black.opacity(0.8))
                            .font(.system(size: 30, weight: .bold))
                    }.padding(.leading, 10)
                    Spacer()
                }
                Image("Life_of_Hae-Oak")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 280)
                    .shadow(color: .gray, radius: 3, y:10)
                    .overlay(Circle()
                        .foregroundColor(.black.opacity(0.5))
                        .frame(width: 40, height: 40)
                        .padding(.top, 10)
                        .padding(.trailing, 10)
                        .overlay(Text("15")
                            .padding(.top, 10)
                            .padding(.trailing, 10)
                            .foregroundColor(.yellow.opacity(0.5)))
                             ,alignment: .topTrailing
                    )
                VStack(alignment: .leading) {
                    HStack(alignment: .bottom) {
                        Text("영화제목")
                            .font(.largeTitle)
                            .bold()
                        Text("영화년도")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                    .padding(.horizontal, 10)
                    Text("영화내용 들어가는 자리입니다. 영화내용 들어가는 자리입니다. 영화내용 들어가는 자리입니다. 영화내용 들어가는 자리입니다. 영화내용 들어가는 자리입니다.")
                        .font(.footnote)
                        .padding(.leading)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        HStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 60, height: 25)
                                .overlay(Text("감 독") .font(.caption) .bold() .foregroundColor(Color.white))
                            Text("이우정")
                                .font(.caption)
                            Spacer()
                        }
                        HStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 60, height: 25)
                                .overlay(Text("출 연") .font(.caption) .bold() .foregroundColor(Color.white))
                            Text("이우정, 이우정, 이우정")
                                .font(.caption)
                        }
                        HStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 60, height: 25)
                                .overlay(Text("장 르") .font(.caption) .bold() .foregroundColor(Color.white))
                            Text("드라마")
                                .font(.caption)
                        }
                        HStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 60, height: 25)
                                .overlay(Text("러닝타임") .font(.caption) .bold() .foregroundColor(Color.white))
                            Text("109분")
                                .font(.caption)
                        }
                    }//Mark: - END VStack
                    .padding(.top)
                    .padding(.horizontal, 20)
                }//Mark: - END VStack
                .padding(.horizontal, 20)
            }//Mark: - END VStack
//        }
    }
}



//struct BlurView: UIViewRepresentable {
//    func makeUIView(context: Context) -> UIVisualEffectView {
//        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterial))
//        return view
//    }
//    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
//    }
//}
