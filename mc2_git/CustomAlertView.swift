//
//  Post.swift
//  mc2_git
//
//  Created by 박지은 on 2023/05/06.
//

import SwiftUI

struct CustomAlertView: View {
    
//    @State private var isShowingPopup = false
//    @Binding var isDisplayed: Bool
    
    var body: some View {
        
        VStack {
            HStack {
                Button(action: {
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.orange)
                        .font(.system(size: 30, weight: .bold))
                }.padding(.leading, -30)
                Spacer()
            }

            Image("Life_of_Hae-Oak")
                .resizable()
                .scaledToFit()
                .frame(width: 300)
                .shadow(color: .gray, radius: 3, y:10)
            
            HStack {
                Text("영화제목")
                    .font(.largeTitle)
                    .bold()
                Text("영화제목ENG")
                    .font(.footnote)
                    .foregroundColor(.gray)
                Spacer()
                Text("영화년도")
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
            
            Text("영화내용 들어가는 자리입니다. 영화내용 들어가는 자리입니다. 영화내용 들어가는 자리입니다. 영화내용 들어가는 자리입니다. 영화내용 들어가는 자리입니다.")
                .font(.footnote)

            HStack {
                RoundedRectangle(cornerRadius: 30)
                    .background(Color.black)
                    .frame(width: 50, height: 20)
                    .overlay(Text("감독").foregroundColor(Color.white))
                Text("감독명")
            }
            
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .background(Color.black)
                    .frame(width: 50, height: 20)
                    .overlay(Text("출연").foregroundColor(Color.white))
                Text("출연자명")
            }
            
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .background(Color.black)
                    .frame(width: 50, height: 20)
                    .overlay(Text("개봉").foregroundColor(Color.white))
                Text("개봉날짜")
            }
            
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .background(Color.black)
                    .frame(width: 80, height: 20)
                    .overlay(Text("러닝타임").foregroundColor(Color.white))
                Text("러닝타임")
            }
        }.padding(.horizontal, 50)
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

struct CustoAlertView_Previews: PreviewProvider {
    static var previews: some View {
        CustomAlertView()
    }
}
