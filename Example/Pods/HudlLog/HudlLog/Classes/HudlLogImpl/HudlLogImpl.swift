//
//  HudlLogImpl.swift
//  Pods
//
//  Created by Alberto Chamorro on 16/11/2016.
//
//

import Foundation

public class HudlLogImpl: HudlLog {
    public init() { }
    
    public func info(func: String, op: String, attributes: LogAttributes) {
        NSLog("[INFO] Func=\(`func`), Op=\(op), Attributes=[\(attributes)]")
    }
    
    public func warning(func: String, op: String, attributes: LogAttributes) {
        NSLog("[INFO] Func=\(`func`), Op=\(op), Attributes=[\(attributes)]")
    }
    
    public func error(func: String, op: String, attributes: LogAttributes) {
        NSLog("[INFO] Func=\(`func`), Op=\(op), Attributes=[\(attributes)]")
    }
    
    public func exception(func: String, op: String, attributes: LogAttributes) {
        NSLog("[INFO] Func=\(`func`), Op=\(op), Attributes=[\(attributes)]")
    }
}
