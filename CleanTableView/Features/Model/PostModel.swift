//
//  PostModel.swift
//  CleanTableView
//
//  Created by Onur Sapan on 16.05.2022.
//

import Foundation

struct PostModel: Codable {
    let userID: Int?
    let id: Int?
    let title: String?
    let body: String?
}
