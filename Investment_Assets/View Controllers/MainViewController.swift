//
//  MainViewController.swift
//  Investment_Assets
//
//  Created by Станислав on 23.01.2022.
//

import UIKit

class MainViewController: UITableViewController {

    private var asset: Asset!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchData(from: Link.api.rawValue)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "assetCell", for: indexPath) as! AssetCell
        
        cell.configure(with: asset)
        
        return cell
    }
    
    //MARK: - Private Methods
    private func fetchData(from url: String) {
        NetworkManager.shared.fetch(from: url) { result in
            switch result {
            case .success(let asset):
                self.asset = asset
                self.tableView.reloadData()
            case .failure(let error):
                print(error)
            }
        }
    }
}
