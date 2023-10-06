//
//  Tv.swift
//  Clone1
//
//  Created by 김우섭 on 10/6/23.
//

import Foundation

struct TrendingTvResponse: Codable {
    let results: [Tv]
}
struct Tv: Codable {
    let id: Int
    let media_type: String?
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
}




/*
 {
adult = 0;
"backdrop_path" = "/dVHeJXUzHJJGadB2wvpuAn6fsdN.jpg";
"first_air_date" = "2021-01-08";
"genre_ids" =             (
 80,
 18,
 9648
);
id = 96677;
"media_type" = tv;
name = Lupin;
"origin_country" =             (
 FR
);
"original_language" = fr;
"original_name" = Lupin;
overview = "Inspired by the adventures of Ars\U00e8ne Lupin, gentleman thief Assane Diop sets out to avenge his father for an injustice inflicted by a wealthy family.";
popularity = "303.535";
"poster_path" = "/l220jMmURQUTzgkFuf6u8YpYs84.jpg";
"vote_average" = "7.773";
"vote_count" = 1828;
}
 */
