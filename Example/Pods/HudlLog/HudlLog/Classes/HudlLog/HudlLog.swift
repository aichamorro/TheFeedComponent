//
//  HudlLog.swift
//  Pods
//
//  Created by Alberto Chamorro on 16/11/2016.
//
//

import Foundation

public typealias LogAttributes = [String:String]

public protocol HudlLog {
    func info(func: String, op: String, attributes: LogAttributes)
    func warning(func: String, op: String, attributes: LogAttributes)
    func error(func: String, op: String, attributes: LogAttributes)
    func exception(func: String, op: String, attributes: LogAttributes)
}
