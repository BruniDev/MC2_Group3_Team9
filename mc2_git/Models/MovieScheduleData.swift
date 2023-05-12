//
//  MovieScheduleData.swift
//  mc2_git
//
//  Created by Youngbin Choi on 2023/05/10.
//

import Foundation

struct MovieScheduleData: Codable {
    let Showseqlist : Array<MovieScheduleInfo>
}

struct MovieScheduleInfo: Codable {
    let MovieNm: String
    let Url: String
    let StartTime: String
    let MovieCd: String
}
