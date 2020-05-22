//
//  Comments.swift
//  castletest
//
//  Created by Dmitriy Nikolin on 23/05/2020.
//  Copyright © 2020 dnikolin. All rights reserved.
//

import Foundation

struct Comment: Codable {
    var postId: Int
    var id: Int
    var name: String
    var email: String
    var body: String
}

