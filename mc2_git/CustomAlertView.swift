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
            
            VStack {
                HStack {
                    Text("영화제목")
                        .font(.largeTitle)
                        .bold()
                    //                    Text("영화제목ENG")
                    //                        .font(.footnote)
                    //                        .foregroundColor(.gray)
                    Spacer()
                    Text("영화년도")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                .padding(.horizontal, 10)
                Text("영화내용 들어가는 자리입니다. 영화내용 들어가는 자리입니다. 영화내용 들어가는 자리입니다. 영화내용 들어가는 자리입니다. 영화내용 들어가는 자리입니다.")
                    .font(.footnote)
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
            }
            .padding(.horizontal, 20)
            
        }
    }
}



//struct BlurView: UIViewRepresentable {
//    func makeUIView(context: Context) -> UIVisualEffectView {
//        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterial))
//
//        return view
//    }
//
//    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
//
//    }
//}
//
//
//struct CustomAlertView: View {
//    @Binding var show: Bool
//
//
//    var body: some View {
//
//        ZStack(alignment: .init(horizontal: .trailing, vertical: .top)) {
//            VStack(spacing: 25) {
//                Image("post1")
//                Text("Congra")
//                    .font(.title)
//                    .foregroundColor(.pink)
//
//                Text("you are good")
//                Button(action: {}) {
//                    Text("Back to Home")
//                        .foregroundColor(.white)
//                        .bold()
//                        .padding(.vertical, 10)
//                        .padding(.horizontal, 25)
//                        .background(Color.purple)
//                        .clipShape(Capsule())
//                }
//            }.padding(.vertical, 25)
//                .padding(.horizontal, 30)
//
//            //Mark: - 9:50
//        }
//
//        VStack {
//            Text("Snorlax")
//                .font(.system(size: 18))
//            Image("post1")
//                .resizable()
//                .frame(width: 80)
//
//            Button(action: {
//                withAnimation {
//                    isPresent = false
//                }
//            }, label: {
//                Text("Close")
//            })
//        }.frame(width: 280, alignment: .center)
//            .padding()
//            .background(Color.red)
//            .cornerRadius(12)
//
//    }).background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray) .frame(width: 40, height: 50))
//
//
//    }
//}

//struct CustoAlertView_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomAlertView()
//    }
//}
