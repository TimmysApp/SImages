//
//  Extensions.swift
//  
//
//  Created by Joe Maghzal on 22/07/2023.
//

import SwiftUI

public extension View {
    func frame(minSize: CGSize, alignment: Alignment = .center) -> some View {
        frame(minWidth: minSize.width, minHeight: minSize.height, alignment: alignment)
    }
    func frame(size: CGSize, alignment: Alignment = .center) -> some View {
        frame(width: size.width, height: size.height, alignment: alignment)
    }
    func frame(maxSize: CGSize, alignment: Alignment = .center) -> some View {
        frame(maxWidth: maxSize.width, maxHeight: maxSize.height, alignment: alignment)
    }
}
