//
//  FeedUIViewController.swift
//  Pods
//
//  Created by Alberto Chamorro on 17/11/2016.
//
//

import Foundation

extension Int {
    func isEven() -> Bool {
        return self % 2 == 0
    }
}

class FeedUIViewController: UITableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "TheFeedCell", for: indexPath)
    }
}
