//
//  DateManager.swift
//  mc2_git
//
//  Created by Youngbin Choi on 2023/05/10.
//

import Foundation
import SwiftSoup

class DateManager {
    var theaterCode = ["광주극장" : ["indieart","000066"] , "광주독립영화관" : ["indieart","000054"] , "더숲아트시네마" : ["indieart","000065"] , "씨네아트리좀" : ["indieart","000053"] , "아트하우스모모" : ["indieart","000067"] , "중앙아트시네마" : ["indieart","000051"] , "에무시네마" : ["indieart","000069"] , "오오극장" : ["indieart","000059"] , "인디플러스포항" : ["indieart","000057"] , "인디플러스천안" : ["indieart","000068"] , "인천미림극장" : ["indieart","000052"] , "전주디지털독립영화관" : ["indieart","000061"] , "판타스틱큐브" : ["indieart","000056"] , "필름포럼" : ["indieart","000070"] , "헤이리시네마" : ["indieart","000071"] , "씨네큐브광화문" : ["cinecube","000003"] , "오르페오한남" : ["monoplex","000096"] , "라이카시네마" : ["spacedog","000072"] , "모퉁이극장" : ["etc","000097"] , "씨네인디U" : ["etc","000098"] , "아리랑시네센터" : ["etc","000088"] , "영화공간주안" : ["etc","000094"] , "KT&G상상마당시네마" : ["etc","000089"] , "KU시네마테크" : ["etc","000102"]  ]
    var allDays : Array<String> = []
    var closedDays : Array<String> = []
    
    func fetchDate(theaterName: String) {
        allDays = []
        closedDays = []
        //디트릭스 영화관 검색 URL
        let urlAddress = "https://www.dtryx.com/cinema/main.do?cgid=FE8EF4D2-F22D-4802-A39A-D58F23A29C1E&BrandCd=\(theaterCode[theaterName]![0])&CinemaCd=\(theaterCode[theaterName]![1])"
        
        guard let url = URL(string: urlAddress) else { return }
        do {
            let html = try String(contentsOf: url, encoding: .utf8)
            let doc: Document = try SwiftSoup.parse(html)
            
            //디트릭스에 올라온 영화관의 상영날짜 리스트
            let firstLink: Elements = try doc.select("div.main-schedule").select("div.swiper-slide").select("a")
            var cnt = 0
            for element in firstLink.array(){
                if cnt < 7 {
                    if try element.attr("class") == "btnDay disabled" {
                        self.closedDays.append(try element.attr("data-dt"))
                    }
                    self.allDays.append(try element.attr("data-dt"))
                    cnt += 1
                }
            }
        } catch let error {
            print("Error : \(error)")
        }
    }
}
