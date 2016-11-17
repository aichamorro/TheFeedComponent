//
//  AppComponent.swift
//  Pods
//
//  Created by Alberto Chamorro on 16/11/2016.
//
//

import Foundation
import UIKit

public protocol AppComponent {
    func open(url: URL, resultHandler: (UIViewController?) -> Void) -> Bool
    func canHandle(url: URL) -> Bool
}

public protocol HudlComponent: AppComponent {
    func canHandle(host: String, path: String) -> Bool
}

public extension HudlComponent {
    func canHandle(url: URL) -> Bool {
        return url.scheme == "hudl" && canHandle(host: url.host!, path: url.path)
    }
}
