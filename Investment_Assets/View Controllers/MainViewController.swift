//
//  MainViewController.swift
//  Investment_Assets
//
//  Created by Станислав on 23.01.2022.
//

import UIKit

class MainViewController: UIViewController {

    private var share: AssetData!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchData(from: Link.api.rawValue)
    }
    
    //MARK: - Private Methods
    private func fetchData(from url: String) {
        NetworkManager.shared.fetch(from: url) { result in
            switch result {
            case .success(let share):
                self.share = share
            case .failure(let error):
                print(error)
            }
        }
    }
}
