//
//  TheFeedComponent.swift
//  Pods
//
//  Created by Alberto Chamorro on 16/11/2016.
//
//

import Foundation
import AppComponent
import HudlLog

public class TheFeedComponent: HudlComponent {
    let logger: HudlLog
    
    public init(logger: HudlLog) {
        self.logger = logger
    }
    
    public func canHandle(host: String, path: String) -> Bool {
        return host == "feed"
    }
    
    public func open(url: URL, resultHandler: (UIViewController?) -> Void) -> Bool {
        // TODO parse the url
        findBundle {
            let storyboard = UIStoryboard(name: "FeedStoryboard", bundle: $0)
            let controller = storyboard.instantiateInitialViewController()
            
            resultHandler(controller)
        }
                
        return true
    }
    
    private func findBundle(resultHandler: (Bundle)->Void) -> Bool {
        let frameworkBundle = Bundle(for: type(of:self))
        
        guard let podBundleUrl = frameworkBundle.url(forResource: "TheFeedComponent", withExtension: "bundle"),
            let podBundle = Bundle(path: podBundleUrl.path) else
        {
            return false
        }

        resultHandler(podBundle)
        return true
    }
}
