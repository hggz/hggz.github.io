//
//  File.swift
//  
//
//  Created by Hugo Gonzalez on 1/6/20.
//

import Foundation

extension Date {
    func prettyPrintDate(withFormat format: String = "MMM dd, yyyy", inputFormat: String = "yyyy-MM-dd HH:mm:ss") -> String {
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = format
        return dateFormatterPrint.string(from: self)
    }
}
