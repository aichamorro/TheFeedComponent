//
//  FeedUIViewController.swift
//  Pods
//
//  Created by Alberto Chamorro on 17/11/2016.
//
//

import Foundation

class FeedUIViewController: UITableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "TheFeedCell", for: indexPath)
    }
}
