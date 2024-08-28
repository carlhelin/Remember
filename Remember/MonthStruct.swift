//
//  MonthStruct.swift
//  Remember
//
//  Created by Carl Helin on 29/07/2022.
//

import Foundation

struct MonthStruct {
    var monthType: MonthType
    var dayInt: Int
    func day() -> String {
       return String(dayInt)
    }
}

enum MonthType {
    case Previous
    case Current
    case Next
}
