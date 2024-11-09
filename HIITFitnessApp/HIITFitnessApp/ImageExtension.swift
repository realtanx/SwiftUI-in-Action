//
//  ImageExtension.swift
//  HIITFitnessApp
//
//  Created by realtanx on 2024/11/9.
//

import Foundation
import SwiftUI

extension Image {
    func resizedToFill(width: CGFloat, height: CGFloat) -> some View {
        return self
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: width, height: height)
    }
}
