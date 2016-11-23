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
    func open(url: URL, resultHandler: @escaping (UIViewController?) -> Void) -> Bool
}
