//
//  File.swift
//  
//
//  Created by Joe Maghzal on 8/7/22.
//

import SwiftUI
import PhotosUI

#if canImport(Charts)
@available(iOS 16.0, *)
struct PhotosPickerConfigurationsKey: EnvironmentKey {
    static let defaultValue = PhotosPickerConfigurations()
}

@available(iOS 16.0, *)
struct PhotosPickerIDKey: EnvironmentKey {
    static let defaultValue = ""
}

@available(iOS 16.0, *)
extension EnvironmentValues {
    var configurations: PhotosPickerConfigurations {
        get {
            self[PhotosPickerConfigurationsKey.self]
        }
        set {
            self[PhotosPickerConfigurationsKey.self] = newValue
        }
    }
    var photosPickerId: String {
        get {
            self[PhotosPickerIDKey.self]
        }
        set {
            self[PhotosPickerIDKey.self] = newValue
        }
    }
}

@available(iOS 16.0, *)
public extension View {
    func photosPickerConfigurations() -> some View {
        environment(\.configurations, PhotosPickerConfigurations())
    }
    func photosPickerId<Value: CustomStringConvertible>(_ id: Value) -> some View {
        environment(\.photosPickerId, id.description)
    }
}
#endif
