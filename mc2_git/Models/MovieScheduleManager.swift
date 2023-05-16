//
//  MovieScheduleManager.swift
//  mc2_git
//
//  Created by Youngbin Choi on 2023/05/10.
//

import Foundation

class MovieScheduleManager {
    
    var theaterCode = ["광주극장" : ["indieart","000066"] , "광주독립영화관" : ["indieart","000054"] , "더숲아트시네마" : ["indieart","000065"] , "씨네아트리좀" : ["indieart","000053"] , "아트하우스모모" : ["indieart","000067"] , "안동중앙시네마" : ["indieart","000051"] , "에무시네마" : ["indieart","000069"] , "오오극장" : ["indieart","000059"] , "인디플러스포항" : ["indieart","000057"] , "인디플러스천안" : ["indieart","000068"] , "인천미림극장" : ["indieart","000052"] , "전주디지털독립영화관" : ["indieart","000061"] , "판타스틱큐브" : ["indieart","000056"] , "필름포럼" : ["indieart","000070"] , "헤이리시네마" : ["indieart","000071"] , "씨네큐브광화문" : ["cinecube","000003"] , "오르페오한남" : ["monoplex","000096"] , "라이카시네마" : ["spacedog","000072"] , "모퉁이극장" : ["etc","000097"] , "씨네인디U" : ["etc","000098"] , "아리랑시네센터" : ["etc","000088"] , "영화공간주안" : ["etc","000094"] , "KT&G상상마당시네마" : ["etc","000089"] , "KU시네마테크" : ["etc","000102"]  ]

    var movieNameList: Array<String> = []
    var movieTimeList: Array<String> = []
    var movieUrlList: Array<String> = []
    var movieCodeList: Array<String> = []
    var movieScheduleDataForUserList: Array<MovieScheduleDataForUser> = []
    
    func fetchMovieSchedule(theaterName: String, date: String, completion: @escaping ([MovieScheduleDataForUser]?) -> Void){
        
        let movieScheduleUrl = "https://www.dtryx.com/cinema/showseq_list.do?cgid=FE8EF4D2-F22D-4802-A39A-D58F23A29C1E&ssid=&tokn=&BrandCd=\(theaterCode[theaterName]![0])&CinemaCd=\(theaterCode[theaterName]![1])&PlaySDT=\(date)"
        performRequest(urlString: movieScheduleUrl) { result in
            completion(result)
        }
    }
    func performRequest(urlString : String, completion: @escaping ([MovieScheduleDataForUser]?) -> Void) {
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil {
                    print("??? error \(error)")
                    completion(nil)
                    return
                }
                
                if let safeData = data {
                    if let result = self.parseJSON(safeData){
                        completion(result)
                        return
                    }
                }
            }
            task.resume()
        }
    }
    func parseJSON(_ data: Data) -> Array<MovieScheduleDataForUser>?{
        let decoder = JSONDecoder()
        do{
            let decodeData = try decoder.decode(MovieScheduleData.self, from: data)
            movieNameList = []
            movieUrlList = []
            movieTimeList = []
            movieCodeList = []
            movieScheduleDataForUserList = []
            movieNameList = decodeData.Showseqlist.map{$0.MovieNm}
            movieUrlList = decodeData.Showseqlist.map{$0.Url}
            movieTimeList = decodeData.Showseqlist.map{$0.StartTime}
            movieCodeList = decodeData.Showseqlist.map{$0.MovieCd}
            for i in 0..<movieNameList.count {
                if i > 0 && movieNameList[i] == movieNameList[i-1] {
                    movieScheduleDataForUserList[movieScheduleDataForUserList.count - 1].movieTimeTable.append(movieTimeList[i])
                }else{
                    movieScheduleDataForUserList.append(MovieScheduleDataForUser(movieName: movieNameList[i], movieIMG: movieUrlList[i], movieTimeTable: [movieTimeList[i]], movieCode: movieCodeList[i]))
                }
            }
            
            //버블정렬로 영화시간 빠른 순서로 정렬
            for i in 0..<movieScheduleDataForUserList.count{
                for j in 0..<(movieScheduleDataForUserList.count-1-i){
                    if movieScheduleDataForUserList[j].movieTimeTable[0] > movieScheduleDataForUserList[j+1].movieTimeTable[0] {
                        movieScheduleDataForUserList.swapAt(j, j+1)
                    }
                }
            }
            
            return movieScheduleDataForUserList
        } catch {
            print(error)
            return nil
        }
    }
}
