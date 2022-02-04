//
//  PostData.swift
//  Hack News
//
//  Created by Edgar Solis on 02/02/22.
//

import Foundation

struct Results: Decodable {
    
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
