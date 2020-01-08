//
//  Extensions.swift
//  
//
//  Created by Hugo Gonzalez on 1/6/20.
//

import Foundation

extension Date {
    func prettyPrintDate(withFormat format: String = "MMM dd, yyyy") -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
}
