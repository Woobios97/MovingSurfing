//
//  YoutubeSearchResponse.swift
//  MovingSuffing
//
//  Created by 김우섭 on 10/8/23.
//

import Foundation

struct YoutubeSearchResponse: Codable {
    var items: [VideoElement]
}

struct VideoElement: Codable {
    var id: IdVideoElement
}

struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}
