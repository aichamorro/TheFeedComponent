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
import URLRouter

public class TheFeedComponent {
    let logger: HudlLog
    
    private lazy var routerEntries: [URLRouterEntry] = {
        let feedListEntry = URLRouterEntryFactory.with(pattern: "hudl://feed") { url, parameters in
            let storyboard = UIStoryboard(name: "FeedStoryboard", bundle: self.bundle(name: "TheFeedComponent"))
            
            return storyboard.instantiateInitialViewController()
        }
        
        return [feedListEntry]
    }()
    
    fileprivate lazy var router: URLRouter = {
        return URLRouterFactory.with(entries: self.routerEntries)
    }()
    
    public init(logger: HudlLog) {
        self.logger = logger
     }
    
    private func bundle(name: String) -> Bundle? {
        let frameworkBundle = Bundle(for: type(of:self))
        
        guard let podBundleUrl = frameworkBundle.url(forResource: name, withExtension: "bundle"),
            let podBundle = Bundle(path: podBundleUrl.path) else
        {
            fatalError()
        }
        
        return frameworkBundle
    }
}

extension TheFeedComponent: AppComponent {
    public func open(url: URL, resultHandler: @escaping (UIViewController?) -> Void) -> Bool {
        return router(url, URLResultHandlerAdapter(handler: resultHandler))
    }
}
