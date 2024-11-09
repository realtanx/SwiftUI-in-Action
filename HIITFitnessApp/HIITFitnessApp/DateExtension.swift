//
//  DateExtension.swift
//  HIITFitnessApp
//
//  Created by realtanx on 2024/11/9.
//

import Foundation

extension Date {
    func formatted(as format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        
        return dateFormatter.string(from: self)
    }
}
