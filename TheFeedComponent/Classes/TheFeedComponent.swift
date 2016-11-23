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
    
    private lazy var bundle: Bundle = {
        let frameworkBundle = Bundle(for: type(of:self))
        
        guard let podBundleUrl = frameworkBundle.url(forResource: "TheFeedComponent", withExtension: "bundle"),
            let podBundle = Bundle(path: podBundleUrl.path) else
        {
            fatalError()
        }
        
        return frameworkBundle
    }()
    
    private lazy var routerEntries: [URLRouterEntry] = {
        let feedListEntry = URLRouterEntryFactory.with(pattern: "hudl://feed") { url, parameters in
            let storyboard = UIStoryboard(name: "FeedStoryboard", bundle: self.bundle)
            
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
}

extension TheFeedComponent: HudlComponent {
    public func canHandle(host: String, path: String) -> Bool {
        return true
    }
    
    public func open(url: URL, resultHandler: @escaping (UIViewController?) -> Void) -> Bool {
        return router(url, { result in
            guard let result = result else {
                resultHandler(nil)
                
                return
            }
            
            if let controller = result as? UIViewController {
                resultHandler(controller)
                
                return
            }
            
            fatalError("The obtained result type does not match the expected one")
        })
    }
}
