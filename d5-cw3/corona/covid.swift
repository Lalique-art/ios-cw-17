//
//  covid.swift
//  corona
//
//  Created by lolo lolo on 19/03/2022.
//

import Foundation

struct UserCovidInfo: Identifiable, Hashable {
    var id = UUID()
    var fullName : String
    var area : String
    var numberOfDoses: Int
}
