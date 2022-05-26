//
//  View+Extensions.swift
//  JTracker
//
//  Created by Mehdi MMS on 26/05/2022.
//

import Foundation
import SwiftUI

extension View {
    public func addBorder<S>(_ content: S, width: CGFloat = 1, cornerRadius: CGFloat) -> some View where S : ShapeStyle {
        let roundedRect = RoundedRectangle(cornerRadius: cornerRadius)
        return clipShape(roundedRect).overlay(roundedRect.strokeBorder(content, lineWidth: width))
    }
    
    func maxSize(alignment: Alignment = .center) -> some View {
        self.frame(minWidth: .zero, idealWidth: .infinity, maxWidth: .infinity, minHeight: .zero, idealHeight: .infinity, maxHeight: .infinity, alignment: alignment)
    }
    
    func maxWidth(alignment: Alignment = .center) -> some View {
        self.frame(minWidth: .zero, idealWidth: .infinity, maxWidth: .infinity, alignment: alignment)
    }
    
    func maxHeight(alignment: Alignment = .center) -> some View {
        self.frame(minHeight: .zero, idealHeight: .infinity, maxHeight: .infinity, alignment: alignment)
    }
}
